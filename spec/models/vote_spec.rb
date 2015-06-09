require 'rails_helper'

describe Vote do

  include TestFactories

  describe 'validations' do
    describe 'value validations' do
      it "only allows values of 1 or -1" do
        # @post is needs to be defined to allow for after_save action in Vote model
        post = associated_post
        @vote_one = Vote.create(value: 1, post: post)
        @vote_two = Vote.create(value: -1, post: post)
        @vote_three = Vote.create(value: 2, post: post)

        expect(@vote_one.valid?).to eq(true)
        expect(@vote_two.valid?).to eq(true)
        expect(@vote_three.valid?).to eq(false)
      end
    end
  end


  describe 'after_save' do
    it "calls 'Post#update_rank' after save" do
      post = associated_post
      vote = Vote.new(value: 1, post: post)
      expect(post).to receive(:update_rank)
      vote.save
    end
  end

end