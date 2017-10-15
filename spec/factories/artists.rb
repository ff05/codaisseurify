FactoryGirl.define do
  factory :artist do
    name        Faker::Name.name
    bio         Faker::Lorem.sentence(50)
    remote_image_url_url   "http://res.cloudinary.com/dfg4uic75/image/upload/v1508063388/codaisseurify/chromatics_lj_250816.jpg"
  end
end
