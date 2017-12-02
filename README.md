# Codaisseurify

Rails app to add and remove songs and artists with use of Ajax. Images are uploaded with  [CarrierWave](https://github.com/carrierwaveuploader/carrierwave) and saved with [Cloudinary](http://cloudinary.com/).

<img align="left" width="46%" src="https://github.com/ff05/codaisseurify/blob/master/app/assets/images/screenshot-artists.png" alt="Artists"/>
<img align="left" width="46%" src="https://github.com/ff05/codaisseurify/blob/master/app/assets/images/screenshot-songs.png" alt="Songs"/>
<br clear="left"/>

## Steps

These are the steps I followed when working on this app:

1. Setting up project
2. Adding CarrierWave
3. Adding Cloudinary
4. Creating App
5. Adding Interactivity with Ajax

## Database Structure

2. Artist

  * t.string :name
  * t.text :bio
  * t.string :image_url
  
2. Song

  * t.string :name
  * t.string :album
  * t.integer :release_year

## Running Locally

Make sure you have [Ruby](https://www.ruby-lang.org/en/) and [Bundler](http://bundler.io/) installed.

```bash
git clone git@github.com:ff05/codaisseurify.git
cd codaisseurify
bundle install
rails db:create db:migrate db:seed
rails server
```

## Test Suite

The following gems were used for testing:
* [Rspec](http://rspec.info/) as the main testing library
* [Factory Girl](http://www.rubydoc.info/gems/factory_girl/file/GETTING_STARTED.md) for easier testing of the models
* [Faker](https://github.com/stympy/faker) A library for generating fake data
* [Capybara](http://teamcapybara.github.io/capybara/) to simulate how the user interacts
* [Selenium Webdriver](http://www.seleniumhq.org/) to automate the browser
* [ChromeDriver](https://sites.google.com/a/chromium.org/chromedriver/) to communicate with the browser
