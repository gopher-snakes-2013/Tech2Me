require 'spec_helper'


feature "when user visits new page" do

  let(:my_question){
    Question.new(title: "Is this a valid question?", body: "let's take this question seriously." )
  }

    it "page shows Add a new answer" do
      # visit question_path(my_question)
      # page.should have_content('Add a new answer')
    end

    it 'page shows form that redirects to question#show' do
      # visit question_path(my_question)
      # puts page.body
      # fill_in('answers_author', :with => 'Dan Authorman')
      # fill_in('answers_answer', :with => 'I am an answer')
      # click_on('Save Answers')
      # page.should have_content('I am an answer')
    end

end
      # expect {
      #   post :create, params, (answers, :count)
      #   }.by(1)