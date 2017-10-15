Song.destroy_all
Artist.destroy_all

# Artists
artist1 = Artist.create!( name: "The National", bio: Faker::Lorem.sentence(50), remote_image_url_url: "http://res.cloudinary.com/dfg4uic75/image/upload/v1507977250/codaisseurify/grahammacindoe_thenational-b-w-iloveimg-converted-e39d092d528ef9b3ff9cacf15b4aacd1863d45ca-s800-c85.jpg" )
artist2 = Artist.create!( name: "Chromatics", bio: Faker::Lorem.sentence(50), remote_image_url_url: "http://res.cloudinary.com/dfg4uic75/image/upload/v1508063388/codaisseurify/chromatics_lj_250816.jpg" )
artist3 = Artist.create!( name: "Daft punk", bio: Faker::Lorem.sentence(50), remote_image_url_url: "http://res.cloudinary.com/dfg4uic75/image/upload/v1508075942/codaisseurify/pq1v2.jpg" )
artist4 = Artist.create!( name: "Hot Chip", bio: Faker::Lorem.sentence(50), remote_image_url_url: "http://res.cloudinary.com/dfg4uic75/image/upload/v1508076192/codaisseurify/C18cuilewJS._SL1000_.jpg" )
artist5 = Artist.create!( name: "Vampire Weekend", bio: Faker::Lorem.sentence(50), remote_image_url_url: "http://res.cloudinary.com/dfg4uic75/image/upload/v1508076262/codaisseurify/2013Albumsof201302.VampireWeekend_Tox12-1.jpg" )
artist6 = Artist.create!( name: "War on Drugs", bio: Faker::Lorem.sentence(50), remote_image_url_url: "http://res.cloudinary.com/dfg4uic75/image/upload/v1508076398/codaisseurify/war-on-drugs-band.jpg" )


# Songs
song1   = Song.create!(name: "Fake Empire", album: "Boxes", release_year: 2000, artist: artist1)
song2   = Song.create!(name: "Demons", album: "Trouble will find me", release_year: 2013, artist: artist1)
song3   = Song.create!(name: "The System only dreams in total darkness", album: "Sleep well beast", release_year: 2017, artist: artist1)
song4   = Song.create!(name: "Ticking of the Clock", album: "Night Drive", release_year: 2007, artist: artist2)
song6   = Song.create!(name: "Human after All", album: "Alive", release_year: 2000, artist: artist3)
song7   = Song.create!(name: "Ready for the Floor", album: "Made in the Dark", release_year: 2008, artist: artist4)
song8   = Song.create!(name: "Ladies of Cambridge", album: "Vampire Weekend", release_year: 2008, artist: artist5)
song9   = Song.create!(name: "Red Eyes", album: "Lost in the Dream", release_year: 2014, artist: artist6)
song10  = Song.create!(name: "Arrest Yourself", album: "The Warning", release_year: 2012, artist: artist4)
