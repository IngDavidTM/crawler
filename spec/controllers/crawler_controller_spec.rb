require 'rails_helper'

RSpec.describe CrawlerController, type: :controller do
  describe 'GET #index' do
    before do
      stub_request(:get, 'https://news.ycombinator.com/')
        .to_return(body: File.read('spec/fixtures/hacker_news_page.html'))

      get :index
    end

    it 'renders the index template' do
      expect(response).to render_template(:index)
    end

    it 'assigns @entries' do
      expect(assigns(:entries)).to be_an(Array)
      expect(assigns(:entries).size).to eq(30)
    end

    it 'assigns @more_than_five_words and @five_or_less_words' do
      expect(assigns(:more_than_five_words)).to be_an(Array)
      expect(assigns(:five_or_less_words)).to be_an(Array)
    end
  end

  describe 'private methods' do
    let(:controller) { CrawlerController.new }
    let(:sample_html) do
      Nokogiri::HTML('<tr class="athing">
                        <td align="right" valign="top" class="title">
                          <span class="rank">1.</span>
                        </td>
                        <td class="titleline"><a href="#">Sample Title</a></td>
                      </tr>
                      <tr>
                        <td class="subtext">
                          <span class="score">123 points</span>
                          <a href="#">12 comments</a>
                        </td>
                      </tr>')
    end

    let(:sample_entry) do
      sample_html.css('tr.athing').first
    end

    it 'correctly builds an entry' do
      entry = controller.send(:build_entry, sample_entry)
      expect(entry[:title]).to eq('Sample Title')
      expect(entry[:points]).to eq(123)
      expect(entry[:comments]).to eq(12)
      expect(entry[:number]).to eq('1.')
      expect(entry[:word_count]).to eq(2)
    end

    it 'extracts points correctly' do
      points = controller.send(:extract_points, sample_entry)
      expect(points).to eq(123)
    end

    it 'extracts comments correctly' do
      comments = controller.send(:extract_comments, sample_entry)
      expect(comments).to eq(12)
    end

    it 'calculates word count correctly' do
      title = 'Sample Title with Five Words'
      word_count = controller.send(:word_count, title)
      expect(word_count).to eq(5)
    end
  end
end
