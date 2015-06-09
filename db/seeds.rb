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

# Create 3 additional users - Admin, Moderator, and Member for testing
admin = User.new(
  name: 'Admin User',
  email: 'admin@example.com',
  password: 'helloworld',
  role: 'admin'
)
admin.skip_confirmation!
admin.save!

moderator = User.new(
  name: 'Moderator User',
  email: 'moderator@example.com',
  password: 'helloworld',
  role: 'moderator'
  )
moderator.skip_confirmation!
moderator.save!

member = User.new(
  name: 'Member User',
  email: 'member@example.com',
  password: 'helloworld'
  )
member.skip_confirmation!
member.save!
users = User.all

# Create 15 Topics
15.times do
  topic = Topic.create!(
    name: Faker::Lorem.sentence,
    description: Faker::Lorem.paragraph
  )
end
topics = Topic.all

# Create 50 Posts
50.times do 
  post = Post.create!(
    user: users.sample,
    topic: topics.sample,
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph
    )
   post.update_attributes!(created_at: rand(10.minutes .. 1.year).ago)
   post.create_vote
   post.update_rank
end

posts = Post.all

# Create 100 Comments, associated with random Posts
100.times do
  Comment.create!(
    post: posts.sample,
    body: Faker::Lorem.paragraph,
    user: users.sample
    )
end



puts "Seeds finished."
puts "#{User.count} users created."
puts "#{Topic.count} topics created."
puts "#{Post.count} posts created."
puts "#{Comment.count} comments created."