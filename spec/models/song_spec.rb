require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:album) }
    it { should validate_inclusion_of(:release_year).in_range(Song::RELEASE_YEAR) }
  end

  describe "association with artist" do
    let(:artist) {create :artist}

    it "belongs to an artist" do
      song = artist.songs.build(name: "Song1", album: "Album1")

      expect(song.artist).to eq(artist)
    end
  end
end
