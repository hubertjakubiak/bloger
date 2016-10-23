require 'rails_helper'


describe 'pagination' do

    before do
      12.times { |post| Post.create(title: "Title #{post + 1}", body: "bla bla")}
    end

    it 'user see post number 11 after clicking button next' do
      visit root_path
      click_link("Next")
      expect(page).to have_content(/Title 11/)
    end
end