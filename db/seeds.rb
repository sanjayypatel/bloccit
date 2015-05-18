require 'faker'

# Create 50 Posts
50.times do 
  Post.create!(
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

puts "Seeds finished."
puts "#{Post.count} posts created."
puts "#{Comment.count} comments created."