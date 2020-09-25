# VinylStar
Vinylstar is a basic rails app and a sweet CMS that allows for the management of my record collection. It does not include an authentication mechanism through Devise or something, as this is intended to be a locally-run management system system and not deployed elsewhere. Should that be needed, [devise](https://github.com/plataformatec/devise) and [bcrypt](https://github.com/codahale/bcrypt-ruby) should be re-enabled and implemented for further security and a `User` table established.

A sample of collection has been included for seeding purposes. These can be optionally be left out for a clean installation of the application.

## What's New?
I started by getting a clear understanding of how all the existing code and infrastructure works and addressed some small low-hanging fruit along the way. 

I felt that the most pressing issues were to give a bit more functionality to the existing design, so my first goal was to give the ability to add new artists and categories to the database, but after poking around I found that these functionalities already existed, but a small UI bug was preventing any navigation to the other pages. This led me to fixing the navigation bar and then redesigning it to give it a cleaner feel.

Here is a full list of the changeset:

- Included database seeds
- Sorted dropdown boxes by name for better usability
- Fixed navigation bar so that other routes are visible and selectable
- Restyled navigation bar: opted to remove dropdown format and added banner image and cleaner design
- Added search functionality for all columns in album tables
- Added a new search field to the albums page
- Included a view table of all albums for a given artist when showing details for a given artist

## Roadmap of Next Steps
- More UI improvements
  - editing and creating albums, artists, etc should be a popup modal instead of a new screen
  - album list on the main page should be a grid view that shows the album cover as a bigger image, with other information about the album centered as regular text below
  - search boxes should ideally be all condensed into one generic search bar that lives within the top navbar
  - overall css improvements 
  - dropdowns for the 
- ability to search by album category
- unit testing ( this is normally something I do before pushing my changeset, but my time constraint focused my attention on other improvements instead )
- navbar logo redirects to a new landing page
- album "show" button should be eliminated and that functionality should be ported to clicking on the album image (in the new gridview design)
- new database field for album description and artist descriptions

## Roadmap for Commercial Use
- new column in the album model for price (as well as corresponding displays and sorting)
- adding a Users table and a login screen, as well as OAuth password authentication
- protected access for adding and editing albums and other catalogue information. Customers should only have access to view and purchase
- landing page with info for the store / business with about info and link to login
- archive tables and special protected pages to show businesses data about the most popular artists, genres, etc!
- online checkout and delivery capabilities
- sample music clip player (similar to iTunes) for using shopping online to get a sample of the album before purchasing


## Dependencies
- Ruby 2.6.x
- Rails 5.2.x
- Postgres >= 12.3

## Development
- Clone this repo and download all the dependencies 
  - if running windows, make sure to update path variables appropriately
- `bundle install`
- `brew install imagemagick` 
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