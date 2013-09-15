grifter.io
==========

In person trading app

## Dependencies

  * Ruby 2.0.0
  * NodeJS 0.10.12
  * PostgreSQL 9.1.5 (recommended download from http://postgresapp.com)

## Configuration

  * /config/database.yml

## Installation

    $ npm install -g bower
    $ bundle install
    $ bower install

## Development

    $ rake db:create
    $ rake db:migrate
    $ rake db:gis:setup

## Testing

    $ guard
    $ rake
    $ rspec

## Deployment

    $ psql -h localhost
    > CREATE EXTENSION postgis;
    > SELECT POSTGIS_VERSION();
