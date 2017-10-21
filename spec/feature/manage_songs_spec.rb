require 'rails_helper'

feature "Managing songs", js:true do
  background do
    visit artist_path(artist)
    fill_in 'song-name', with: 'A song title'
    fill_in 'song-album', with: 'A song album'
    fill_in 'song-year', with: '2000'
    click_link 'add-button'
  end

  given(:artist) { create :artist }

  scenario "adds a song to the page" do
    expect(page).to have_content('A song title', 'A song album', '2000')
  end

  scenario "deletes a song from page" do
    click_link 'del-button'

    expect(page).not_to have_content('A lovely song')
  end

  scenario "deletes all songs" do
    fill_in 'song-name', with: 'Another song title'
    fill_in 'song-album', with: 'Another song album'
    fill_in 'song-year', with: '2010'
    find("#add-button").click

    find("#del-all-button").click
    page.driver.browser.switch_to.alert.accept

    expect(page).not_to have_content('A song title', 'Another song title')
  end
end
