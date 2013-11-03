require 'spec_helper'

feature "Questions" do
  context "User visits questions index" do
    it "should display a list of question titles" do
      Question.create(title: "Burger King", body: "can you flip a burger?")
      visit questions_path
      expect(page).to have_content("Burger King")
    end
  end

  context "User clicks 'New Question' button", js: true do
    it "should display a pop up form" do
      visit questions_path
      click_on 'New Question'
      expect(page).to have_content("Ask a Question:")
    end

    it "should create a new question when you fill in the form and submit" do
      visit questions_path
      click_on 'New Question'
      fill_in 'question_title', :with => 'Trostli Inc'
      fill_in 'question_body', :with => 'What is the square root of Daniel?'
      click_on 'Ask!'
      expect(page).to have_content('Trostli Inc')
    end
  end

  context "question#show" do

    it "should have an edit button" do
      question = Question.create(title: "Burger King", body: "can you flip a burger?")
      visit question_path(question)
      expect(page).to have_content('edit')
    end

    it "should display an edit form when edit is clicked" do
      question = Question.create(title: "Burger King", body: "can you flip a burger?")
      visit question_path(question)
      click_on "edit"
      page.has_selector?('form')
    end

  end

end



