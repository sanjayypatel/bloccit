require 'rails_helper'

describe 'Vote' do
  describe 'validations' do

    describe 'value validations' do
      it "only allows values of 1 or -1" do
        # @post is needs to be defined to allow for after_save action in Vote model
        @post = Post.create(title: 'post title', body: 'Post bodies must be pretty long.')
        @vote_one = Vote.create(value: 1, post: @post)
        @vote_two = Vote.create(value: -1, post: @post)
        @vote_three = Vote.create(value: 2, post: @post)

        expect(@vote_one.valid?).to eq(true)
        expect(@vote_two.valid?).to eq(true)
        expect(@vote_three.valid?).to eq(false)
      end
    end


  end
end