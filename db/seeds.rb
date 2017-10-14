Song.destroy_all
Artist.destroy_all

# Artists
artist1 = Artist.create!( name: "The National", bio: Faker::Lorem.sentence(50), image_url: "https://www.google.nl/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwj_0YD_6-_WAhUOJ1AKHfQbD0MQjRwIBw&url=http%3A%2F%2Fwww.npr.org%2Fartists%2F15161426%2Fthe-national&psig=AOvVaw1jXc8ftn4BqeB1CAiXM1jT&ust=1508061225511717" )

# Songs
song1 = Song.create!(name: "Fake Empire", album: "Boxes", release_year: 2000, artist: artist1)
song2 = Song.create!(name: "Demons", album: "Trouble will find me", release_year: 2013, artist: artist1)
song2 = Song.create!(name: "The System only dreams in total darkness", album: "Sleep well beast", release_year: 2017, artist: artist1)
