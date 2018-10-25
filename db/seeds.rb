10.times do
User.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,description: Faker::Lorem.sentence, email: Faker::Internet.email, age: rand(1..150))
end