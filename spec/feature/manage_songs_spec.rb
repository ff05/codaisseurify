require 'rails_helper'

describe "Managing songs" do
  let(:artist) { create :artist }

  it "adds a song" do
    visit artist
    fill_in 'song-name', with: 'A lovely song'
    fill_in 'song-album', with: 'A lovely album'
    fill_in 'song-year', with: 'A lovely year'
    page.execute_script("$('#add-button').click()")

    expect(page).to have_content('A lovely song')
  end
end


# feature 'Manage songs', js: true do
#
  # def set_initial
  #   visit artist_path
  #   fill_in 'song-name', with: 'A lovely song'
  #   fill_in 'song-album', with: 'A lovely album'
  #   fill_in 'song-year', with: 'A lovely year'
  #   page.execute_script("$('#add-button').click()")
  # end

#   scenario 'add a new song' do
#     set_initial
#
#     expect(page).to have_content('A lovely song')
#   end

  # scenario 'counter changes' do
  #   set_initial
  #
  #   # Wait for 1 second so the counter can be updated
  #   sleep(1)
  #
  #   expect( page.find(:css, 'span#todo-count').text ).to eq "1"
  # end
  #
  # scenario 'complete a task' do
  #   set_initial
  #   check('todo-1')
  #   # Wait for 1 second so the counter can be updated
  #   sleep(1)
  #
  #   expect( page.find(:css, 'span#todo-count').text ).to eq "0"
  # end
  #
  # scenario 'advanced todo mgmt' do
  #   visit todos_path
  #   3.times { fill_in 'todo_title', with: 'Be Batman'
  #   page.execute_script("$('form').submit()")
  #   }
  #
  #   check('todo-1')
  #   check('todo-2')
  #
  #   expect( page.find(:css, 'span#todo-count').text ).to eq "1"
  #   expect( page.find(:css, 'span#total-count').text ).to eq "3"
  #   expect( page.find(:css, 'span#completed-count').text ).to eq "2"
  #
  #   page.execute_script("$('#clean-up').click()")
  #   expect( page.find(:css, 'span#completed-count').text ).to eq "0"
  #
  # end


# end
