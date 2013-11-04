require 'spec_helper'

feature "when user visits new page" do

  let(:my_question){
    Question.create(title: "something different", body: "let's take this question seriously." )
  }

  before :each do
  sign_in_user
  visit question_path(my_question)
  fill_in 'Author', :with => "Poop"
  fill_in 'Answer', :with => "WTF"
  click_button 'Create Answer'
  end

  scenario 'User can add an answer to a question' do
    expect(page).to have_content('Poop')
    expect(page).to have_content('WTF')
  end

  scenario 'User can see a link to view all of their questions' do
    visit questions_path(my_question)
    expect(page).to have_content('View your past Answers')
  end


end
