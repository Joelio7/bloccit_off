include RandomData

#create Users
5.times do
  user = User.create!(
  user_name: RandomData.random_word,
  email: RandomData.random_email,
  password: RandomData.random_sentence

  )
end
  users = User.all

50.times do
  Item.create!(
  user: users.sample,
  name: RandomData.random_sentence
  )
user = User.first
user.update_attributes!(
email: 'joel.scalera@gmail.com',
password: 'Yardyear92'
)

end

puts "Seed finished"
puts "#{Item.count} items saved"
puts "#{User.count} users created"
