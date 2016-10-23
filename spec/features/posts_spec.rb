require 'rails_helper'

describe 'navigate', js: true do
  describe 'index' do
    it 'can be reached successfully' do
      visit root_path
      expect(page).to have_content(/Listing Posts/)
    end
  end
end

describe 'Creation', js: true do

  before do
    @user = user = User.create(email: 'asdfasdf@asdf.com', password: 'asdfasdf', password_confirmation: 'asdfasdf')
  user.confirm!
    login_as(@user, :scope => :user)

    visit new_post_path
  end

  it 'only signed in user can access new form page for posts' do
    visit new_post_path
    expect(page).to have_button("Create Post")
  end

  it 'when signed our user see message' do
    click_link("Logout")
    visit new_post_path
    expect(page).to have_content("need to sign in")
  end
end