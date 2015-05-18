unless Post.where(title: "Making an idempotent test post. v2").first
  Post.create!(
    title: "Making an idempotent test post. v2",
    body: "Unique Post Body."
    )
end
puts "Seeds finished."
