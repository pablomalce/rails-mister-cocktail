# Mister Cocktail

A small Ruby on Rails CRUD app for managing cocktails and their ingredient doses.

## Context

Built on 23–24 July 2020 as the "Mister Cocktail" exercise of the Le Wagon full-stack bootcamp (Rails module). The `spec/` folder is a git submodule pointing to Le Wagon's public spec repository for this challenge, which the exercise is graded against.

## What it does

- Three models: `Cocktail`, `Ingredient` and `Dose` (a join model with a description such as "6cl", linking a cocktail to an ingredient). Names and descriptions are validated for presence and uniqueness.
- Nested routes: list, view and create cocktails; add a dose to a cocktail or delete one from it. The index also links to edit and delete, but there is no `edit` view or `update` action, so editing does not work. Deleting a cocktail removes the record, but the `destroy` action has no redirect or view, so the browser is not sent back to the list.
- `db/seeds.rb` pulls the ingredient list from the public TheCocktailDB API and creates three sample cocktails.
- Bootstrap-styled views with Simple Form and Font Awesome.

## Stack

Ruby 2.6.6, Rails 6.0, PostgreSQL, Webpacker 4, Sass, Simple Form, RSpec (through the Le Wagon specs).

## Running locally

Requires Ruby 2.6.6, PostgreSQL, Node and Yarn.

```bash
git clone --recurse-submodules https://github.com/pablomalce/rails-mister-cocktail.git
cd rails-mister-cocktail
bundle install && yarn install
rails db:create db:migrate db:seed   # the seed needs internet access
rails server
```

Specs run with `rspec` (they need the `spec` submodule).

## Status

Archived learning project from 2020, not maintained.
