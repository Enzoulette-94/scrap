Readme - Crypto & Townhall Scrapers
Crypto & Townhall Scrapers

This repository contains small Ruby utilities to scrape public data from two kinds of sources:

Cryptocurrency listings (e.g., coin prices and symbols) — scripts that fetch and parse market lists.

Townhall (Mairie) directories — scripts that fetch and parse French townhall contact pages to extract official email addresses.

Scope & intent: educational tools and proof-of-concept scrapers for learning web scraping with Nokogiri and XPath. They are not intended for heavy production use or to bypass site protections.

Features

Fetch and parse HTML pages using open-uri and Nokogiri.

XPath-based selectors (project constraint: XPath-only).

Utilities to:

Extract symbol and price pairs from cryptocurrency listing pages (when data is available in static HTML).

Extract mailto: addresses or fallback to regex-based extraction from townhall pages.

Basic error handling and debugging helpers (print node snippets, fallback flows).

Requirements

Ruby 3.x

Bundler (recommended)

Gems:

nokogiri

(Optional) selenium-webdriver or a headless browser if you need to render JavaScript-heavy pages like CoinMarketCap.

Install dependencies:

gem install nokogiri
# or use bundler with a Gemfile
Project structure (suggested)
/ (repo root)
├─ crypto_scraper.rb      # examples and scripts for crypto scraping
├─ townhall_scraper.rb    # functions: get_townhall_email, get_townhall_urls
├─ README.md
└─ notes/                 # debugging notes, sample outputs
Usage (examples)

townhall_scraper.rb should expose a function get_townhall_email(url) that returns an email string (or nil if not found).

get_townhall_urls(listing_url) should return an array of { "name" => "City", "url" => "https://..." } entries for a department (e.g. Val-d'Oise).

Run scripts locally and inspect console outputs during development. For JavaScript-driven sites (CoinMarketCap), prefer a headless browser approach.

Ethics & Legal

Only scrape public information and respect each site’s robots.txt and terms of service.

Add polite rate limiting (sleep between requests) and avoid aggressive crawling.

Do not use these scripts to harvest personal data for spam or other unlawful activities.

License

MIT — feel free to adapt for learning purposes.

Contact

If you want improvements or help integrating headless browsing, open an issue or contact the maintainer.
