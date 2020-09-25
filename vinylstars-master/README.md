# VinylStar
Vinylstar is a basic rails app and a sweet CMS that allows for the management of my record collection. It does not include an authentication mechanism through Devise or something, as this is intended to be a locally-run management system system and not deployed elsewhere. Should that be needed, [devise](https://github.com/plataformatec/devise) and [bcrypt](https://github.com/codahale/bcrypt-ruby) should be re-enabled and implemented for further security and a `User` table established.

A sample of collection has been included for seeding purposes. These can be optionally be left out for a clean installation of the application.

## Dependencies
- Ruby 2.6.x
- Rails 5.2.x
- Postgres >= 12.3

## Development
- Clone this repo
- `bundle install`
- `brew install imagemagick` (unfortunately a known issue and dependency that I would otherwise use to build in a bash script for install)
    - if you are running on Windows, simply download imagemagick here: https://imagemagick.org/script/download.php#windows
- `createdb vinyl_stars_dev` 
- `rails db:migrate`
- `rails db:seed` (optional)
- `rails s`
- You're done!

## Testing
- `createdb vinyl_stars_test`
- `rspec spec` (to run full test suite)
- NOTE: some seed or valid data must exist to run the specs. This is a current limitation in the test design.