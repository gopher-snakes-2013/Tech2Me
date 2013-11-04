require 'spec_helper'

describe QuestionsController do

  context "questions#index" do
    it "should display a page for question titles" do
      get :index
      expect(response).to render_template(:index)
    end
  end

  context "question#create" do
    it "should add a question to database" do
      expect {
        sign_in
        post :create, :question => { :title => "i am a title", :body => "i am content" }
      }.to change(Question, :count)
    end
  end

  context "question#new" do
    it "should exist" do
      get :new
      response.status.should eq 200
    end
  end

  context "questions#show" do

    it "should display a page with a question and a thread of answers" do
      my_question = Question.create(title:"this is a title", body: "this is the question body")
      get :show, id: my_question.id
      response.status.should eq 200
    end
  end

end
