require 'spec_helper'

feature "when user visits new page" do

  let(:my_question){
    Question.create(title: "Is this a valid question?", body: "let's take this question seriously." )
  }

  it "should show Add a new answer" do
    visit question_path(my_question)
    page.should have_content('Add a new answer')
  end

end
