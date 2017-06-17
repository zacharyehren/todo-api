5.times do
  User.create!(
  username: Faker::LordOfTheRings.character
  )
end

puts "Seed finished"
puts "#{User.count} users created"
