require 'rails_helper'

RSpec.describe Artist, type: :model do

  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:image_url) }
  end

  describe "association with songs" do
    let(:artist) { create :artist }
    let!(:song) { create :song, artist: artist }

    it "has many songs" do

      song1 = artist.songs.new(name: "FEBTGrgrheth", album: "fejfeikfj")
      song2 = artist.songs.new(name: "jwfiegjeg", album: "fejfeikfj")

      expect(artist.songs).to include(song1)
      expect(artist.songs).to include(song2)
    end

    it "deletes associated songs" do
      expect { artist.destroy }.to change(Song, :count).by(-1)
    end

  end

end
