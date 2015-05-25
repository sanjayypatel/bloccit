require 'faker'

# Create 5 users
5.times do 
  user = User.new(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Lorem.characters(10)
  )
  user.skip_confirmation!
  user.save!
end
users = User.all


# Create 50 Posts
50.times do 
  Post.create!(
    user: users.sample,
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph
    )
end

posts = Post.all

# Create 100 Comments, associated with random Posts
100.times do
  Comment.create!(
    post: posts.sample,
    body: Faker::Lorem.paragraph
    )
end

# Modify first user to allow dev login and testing
user = User.first
user.skip_reconfirmation!
user.update_attributes!(
  email: 'sanjay.y.patel@gmail.com',
  password: 'helloworld'
)

puts "Seeds finished."
puts "#{User.count} users created."
puts "#{Post.count} posts created."
puts "#{Comment.count} comments created."