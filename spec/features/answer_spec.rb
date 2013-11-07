require 'spec_helper'

feature "when user visits new page" do

  let(:my_question){
    Question.create(title: "something different", body: "let's take this question seriously." )
  }

  scenario 'User can add an answer to a question' do
    # attention: this is not a test
    sign_in_user
    visit question_path(my_question)
    save_and_open_page
    fill_in 'Author', :with => "Poop"
    fill_in 'Answer', :with => "WTF"
    click_button 'Create Answer'
  end

end

