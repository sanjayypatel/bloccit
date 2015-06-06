require 'rails_helper'

describe 'Vote' do
  describe 'validations' do

    describe 'value validations' do
      it "only allows values of 1 or -1" do
        @vote_one = Vote.create(value: 1)
        @vote_two = Vote.create(value: -1)
        @vote_three = Vote.create(value: 2)

        expect(@vote_one.valid?).to eq(true)
        expect(@vote_two.valid?).to eq(true)
        expect(@vote_three.valid?).to eq(false)
      end
    end


  end
end