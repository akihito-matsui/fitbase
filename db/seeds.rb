# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |n|
  User.create(
  name: Faker::JapaneseMedia::DragonBall.character,
  gender: Faker::Gender.binary_type,
  age: Faker::Number.decimal_part(digits: 2),
  resident: Faker::Address.city,
  birthplace: Faker::Address.city,
  training_place: Faker::House.room,
  frequency: Faker::Subscription.payment_term,
  objective: Faker::Name.name_with_middle,
  protein_supplement: Faker::Food.dish,
  music: Faker::Music.album,
  speakout: Faker::Name.name_with_middle,
  message: Faker::Name.name_with_middle,
  email: Faker::Internet.email,
  password: "password",
  profile_picture: Faker::Placeholdit.image
  )
#  User.create!(name: name, gender: gender,  age: age, resident: resident, birthplace: birthplace,
#              training_place: training_place, frequency: frequency, objective: objective,
#              protein_supplement: protein_supplement, music: music, speakout: speakout,
#              message: message, email: email, password: password, profile_picture: profile_picture,
#              )
end