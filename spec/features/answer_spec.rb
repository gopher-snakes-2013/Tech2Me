require 'spec_helper'


feature "when user visits new page" do

  let(:my_question){
    Question.create(title: "Is this a valid question?", body: "let's take this question seriously." )
  }

    it "page shows Add a new answer" do
      visit question_path(my_question)
      page.should have_content('Add a new answer')
    end

    it 'page shows form that redirects to question#show' do
      visit question_path(my_question)
      sign_in
      fill_in('answer_author', :with => 'Dan Authorman')
      fill_in('answer_answer', :with => 'I am an answer')
      click_on('Create Answer')
      page.should have_content('I am an answer')
    end

end
