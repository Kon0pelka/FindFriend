require 'faker'

1000.times do
  user = User.new(age: rand(1...75),
                  gender: Faker::Gender.binary_type,
                  lat: Faker::Address.latitude,
                  lon: Faker::Address.longitude,
                  first_name: Faker::Name.first_name,
                  second_name: Faker::Name.second_name)
  user.save
end
