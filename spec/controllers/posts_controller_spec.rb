require 'rails_helper'

RSpec.describe PostsController do

  let!(:posts) do 
      [Post.create(title: "Title 1", body: "Body 1"), Post.create(title: "Title 2", body: "Body 2")]
  end

  describe "posts" do
    it "assigns @posts" do
      
      get :index
      expect(assigns(:posts)).to eq(posts)
    end
  end

end
