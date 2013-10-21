grifter.io
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

#### Setup

  * rake db:create
  * rake db:gis:setup
  * rake db:migrate

#### Testing

  * guard
  * rake
  * rspec

## Deploy

  * psql -h localhost

Then

  * CREATE EXTENSION postgis;
  * SELECT POSTGIS_VERSION();
