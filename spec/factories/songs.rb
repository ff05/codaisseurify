FactoryGirl.define do
  factory :song do
    name          Faker::Name.name
    album         Faker::Name.name
    release_year  Faker::Number.between(1300, 2017)
  end
end
