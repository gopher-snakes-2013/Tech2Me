require 'spec_helper'


feature "when user visits new page" do

    it "page shows Add a new comment" do
      visit new_answer_path
      page.should have_content('Add a new comment')
    end

    it 'page shows form that redirects to question#show' do
      visit new_answer_path
      fill_in('author', :with => 'Dan Authorman')
      fill_in('comment', :with => 'I am a comment')
      click('Submit')
      page.should have_content('Question: ')
    end

end
      # expect {
      #   post :create, params, (answers, :count)
      #   }.by(1)