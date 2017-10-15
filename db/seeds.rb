Song.destroy_all
Artist.destroy_all

# Artists
artist1 = Artist.create!( name: "The National", bio: Faker::Lorem.sentence(50), remote_image_url_url: "http://res.cloudinary.com/dfg4uic75/image/upload/v1507977250/codaisseurify/grahammacindoe_thenational-b-w-iloveimg-converted-e39d092d528ef9b3ff9cacf15b4aacd1863d45ca-s800-c85.jpg" )
artist2 = Artist.create!( name: "Chromatics", bio: Faker::Lorem.sentence(50), remote_image_url_url: "http://res.cloudinary.com/dfg4uic75/image/upload/v1508063388/codaisseurify/chromatics_lj_250816.jpg" )


# Songs
song1 = Song.create!(name: "Fake Empire", album: "Boxes", release_year: 2000, artist: artist1)
song2 = Song.create!(name: "Demons", album: "Trouble will find me", release_year: 2013, artist: artist1)
song2 = Song.create!(name: "The System only dreams in total darkness", album: "Sleep well beast", release_year: 2017, artist: artist1)
