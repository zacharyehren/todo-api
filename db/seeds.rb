5.times do
  User.create!(
  username: Faker::LordOfTheRings.character
  )
end
users = User.all

2.times do
  List.create!(
  name: Faker::LordOfTheRings.location,
  user: users.sample
  )
end

lists = List.all

10.times do
  Item.create!(
  item: Faker::LordOfTheRings.location,
  list: lists.sample
  )
end


puts "Seed finished"
