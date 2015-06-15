FactoryGirl.define do
  factory :post do
    title "Post Title"
    body "Post body must be pretty long."
    user
    topic { Topic.create(name: "Topic Name")}
  end
end