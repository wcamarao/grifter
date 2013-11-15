grifter.io [![Build Status](https://api.travis-ci.org/wcamarao/grifter.png)](http://travis-ci.org/wcamarao/grifter)
==========

Personal Trading Marketplace

## Dependencies

#### Runtime

  * Ruby 2.0.0
  * Rails 4.0.0
  * PostgreSQL 9.2.4
  * PostGIS 2.1.0

#### Development

  * NodeJS 0.10.12
  * Homebrew 0.9.4

#### Installation

  * brew install postgresql
  * brew install postgis
  * npm install -g bower
  * bundle install
  * bower install

## Development

#### Configuration

  * /config/database.yml
  * /config/initializers/flickr.rb
  * /config/initializers/omniauth.rb

#### Setup

  * rake db:create
  * rake db:gis:setup
  * rake db:migrate

## Verify PostGIS

  * psql -h localhost

Then

  * SELECT POSTGIS_VERSION();

If it fails, try manually installing

  * CREATE EXTENSION postgis;

#### Testing

  * guard
  * rake
  * rspec

#### Truncating

Before running `rake db:drop` you may want to run `Item.destroy_all` to save space on flickr by deleting the pictures related to the items being deleted.
