grifter.io
==========

In person trading app

## Dependencies

* Ruby 2.0.0
* NodeJS 0.10.12
* PostgreSQL 9.1.5

## Configuration

* /config/database.yml

## Installation

    $ npm install -g bower
    $ bundle install
    $ bower install

## Development

    $ rake db:create
    $ rake db:migrate

## Testing

    $ guard
    $ rake
    $ rspec
