<a name="readme-top"></a>

<div align="center">

  <h1>Crawler</h1>

</div>

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Run tests](#run-tests)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ](#faq)
- [📝 License](#license)

# 📖 Blog App <a name="about-project"></a>

> This is a web crawler built with Ruby on Rails that scrapes the top 30 articles from Hacker News using Nokogiri and HTTParty. It extracts titles, points, and comments, and provides filtering options based on title length and sorting by comments or points. The project also includes RuboCop and RSpec for code linting and testing.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  </ul>
</details>

<details>
  <summary>Database</summary>
  <ul>
    <li><a href="https://www.mysql.com/">MySQL</a></li>
  </ul>
</details>

### Key Features <a name="key-features"></a>

- **Web Scraping: Extracts top 30 Hacker News articles.**
- **Data Extraction: Scrapes titles, points, and comments.**
- **Filtering: Filters articles by title length.**
- **Sorting: Sorts articles by comments or points.**
- **Linters: Integrated with RuboCop for code quality.**
-**Testing: Uses RSpec for automated tests.**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🚀 Live Demo <a name="live-demo"></a>

- Not available yet

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

```
gem install ruby
gem install rails

```

### Setup

Clone this repository to your desired folder:

```
  cd my-folder
  git clone git@github.com:IngDavidTM/crawler.git
```

### Install

Install this project with:

```
cd crawler
bundle install
```

### Create database

Add the username and password that you are using in psql to `config/database.yml`

Create and migrate the database with:

```
rails db:create
rails db:migrate
```

### Usage

To run the project, execute the following command:

```
rails server
```

### Run tests

To run tests, execute the following command:

```
bundle exec rspec
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 👥 Author <a name="authors"></a>

👤 **David Tamayo**

- GitHub: [@IngDavidTM](https://github.com/IngDavidTM)
- Twitter: [@David5TM](https://twitter.com/David5TM)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/ing-david-tamayo)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>

- **Add more filters and improve UX**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project, kindly give a start to support a greater and widespread reach

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank StackBuilders for the oportunity.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ❓ FAQ <a name="faq"></a>

- **Do I need ruby installed?**

  - Yes you do

- **Do I need internet Access**

  - Yes you do

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

_NOTE: we recommend using the [MIT license](https://choosealicense.com/licenses/mit/) - you can set it up quickly by [using templates available on GitHub](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-license-to-a-repository). You can also use [any other license](https://choosealicense.com/licenses/) if you wish._

<p align="right">(<a href="#readme-top">back to top</a>)</p>
