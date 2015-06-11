require 'rails_helper'

describe User do

  include TestFactories

  describe '#favorited(post)' do

    before do
      @user = authenticated_user
      @post = associated_post
    end

    it "returns nil if the user has not favorited the post" do
      expect(@user.favorited(@post)).to be_nil
    end

    it "returns the appropriate favorite if it exists" do
      favorite = @user.favorites.create(post: @post)
      expect(@user.favorited(@post)).to eq(favorite)
    end

    it "returns `nil` if the user has favorited another post" do
      other_post = associated_post
      favorite = @user.favorites.create(post: other_post)
      expect(@user.favorited(@post)).to be_nil
    end

  end

end