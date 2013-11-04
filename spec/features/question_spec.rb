require 'spec_helper'

feature "Questions" do
  let(:my_question) {
      Question.create(title: "Is this a valid question?", body: "let's take this question seriously.")
  }

  scenario "User visits questions index and it should display a list of question titles" do
    Question.create(title: "Burger King", body: "can you flip a burger?")
    visit questions_path
    expect(page).to have_content("Burger King")
  end

  scenario "User can get to new questions form via questions#index" do
    visit questions_path
    click_link "Create New Question"
    expect(page).to have_css("form#new_question")
  end

  scenario "User can create a new question" do
    sign_in_user
    visit new_question_path
    title = "APPLES"
    fill_in 'Title', :with => title
    fill_in 'Question', :with => "Sauce"
    click_button 'Ask dat question'
    expect(page).to have_content(title)
  end

  scenario "Users should be able to visit the question show page" do
    visit question_path(my_question)
    page.should have_content('Add a new answer')
  end

end
