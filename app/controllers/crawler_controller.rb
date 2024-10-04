class CrawlerController < ApplicationController
  def index
    url = 'https://news.ycombinator.com/'
    response = HTTParty.get(url)
    parsed_page = Nokogiri::HTML(response.body)

    @entries = parsed_page.css('.athing').map do |entry|
      build_entry(entry)
    end.take(30)

    @more_than_five_words, @five_or_less_words = filter_and_sort_entries(@entries)
  end

  private

  def build_entry(entry)
    title = entry.css('.titleline a').first.text
    points = extract_points(entry)
    comments = extract_comments(entry)
    number = entry.at_css('span.rank').text

    {
      number:,
      title:,
      points:,
      comments:,
      word_count: word_count(title)
    }
  end

  def extract_points(entry)
    points_text = entry.xpath('following-sibling::tr[1]//span[@class="score"]').text
    points_text.match(/\d+/).to_s.to_i
  end

  def extract_comments(entry)
    comments_text = entry.xpath('following-sibling::tr[1]//a[contains(text(), "comment")]').text
    comments_text.match(/\d+/).to_s.to_i
  end

  def word_count(title)
    title.split(/\s+/).grep_v(/^\W+$/).count
  end

  def filter_and_sort_entries(entries)
    more_than_five_words = entries.select { |entry| entry[:word_count] > 5 }
      .sort_by { |entry| -entry[:comments] }

    five_or_less_words = entries.select { |entry| entry[:word_count] <= 5 }
      .sort_by { |entry| -entry[:points] }

    [more_than_five_words, five_or_less_words]
  end
end
