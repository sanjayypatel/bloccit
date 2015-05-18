#Check for existence of the desired post before creating it.
unless Post.where(title: "Making an idempotent test post.").first
  Post.create!(
    title: "Making an idempotent test post.",
    body: "Unique Post Body."
    )
end
puts "Seeds finished."
