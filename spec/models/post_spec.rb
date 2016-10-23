require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'Creation' do

    before(:each) do
      @post = Post.create(title: "Siemka", body: "elo elo")
    end

    describe 'post with title and body' do 
      it 'is valid' do
        expect(@post).to be_valid
      end
    end

    describe 'post without title and body' do 
      it 'is not valid' do
        @post.title = nil
        @post.body = nil
        expect(@post).to_not be_valid
      end
    end
  end
end
