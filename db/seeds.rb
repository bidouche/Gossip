10.times do
User.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name, description: Faker::Lorem.sentence, email: Faker::Internet.email, age: rand(1..150))
end

10.times do
City.create!(name: Faker::Address.city ,postale_code: Faker::Address.postcode, user_id: rand(1..10))
end

20.times do
Gossiptable.create!(title: Faker::Dessert.variety ,content: Faker::Lorem.sentence, date: Faker::Date.between(40.days.ago, Date.today), user_id: rand(1..10), tag_id: rand(1..10))
end

10.times do
Tag.create!(title: Faker::Dessert.variety, user_id: rand(1..10), gossiptable_id: rand(1..20))
end