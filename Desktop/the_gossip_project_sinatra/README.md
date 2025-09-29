# The Gossip Project (Sinatra)

## Overview
- Small web app built in one day to practice Sinatra and CSV handling.
- Lets you add new gossips and read them one by one.
- Stores everything in a lightweight local CSV file (`db/gossip.csv`).

## Core features
- Form to create a gossip (`/gossips/new/`).
- Gossip list on the home page (`/`).
- Detail page for every gossip (`/gossips/:id/`).

## Requirements
- Ruby 3.4.2 (declared in the `Gemfile`).
- Bundler (`gem install bundler` if needed).

## Installation
1. Clone the repository or download the project archive.
2. Install Ruby dependencies:
   ```bash
   bundle install
   ```

## Run the app
1. From the project root, start the Sinatra server through Rack:
   ```bash
   bundle exec rackup
   ```
2. Open a browser at `http://localhost:9292` (or whichever port Rack prints).
3. Use the form to create a gossip, then head back to the home page to see it listed.

## Project structure
```
.
├── config.ru            # Rack entry point that boots the Sinatra app
├── db
│   └── gossip.csv       # CSV file storing every gossip
├── lib
│   ├── controller.rb    # Sinatra routes and controller logic
│   ├── gossip.rb        # `Gossip` class, reads/writes the CSV file
│   └── views            # ERB templates (index, show, new)
└── README.md
```

## Exposed routes
- `/` : loads every gossip from the CSV file.
- `/gossips/new/` : form that accepts `auteur` and `contenu` fields.
- `/gossips/:id/` : displays the gossip at the given index (CSV is zero-based).

## Data handling
- Each entry is a CSV row with two columns: `auteur`, `contenu`.
- `db/gossip.csv` already contains a few example gossips used during development.
- Current implementation does not deduplicate entries or allow deletion.

## Ideas for improvement
- Add form validations (required fields, maximum length, etc.).
- Provide edit/delete actions for an existing gossip.
- Replace the CSV file with a SQLite database via ActiveRecord for stronger persistence.
- Add tests (RSpec or Minitest) covering the `Gossip` class and main routes.
