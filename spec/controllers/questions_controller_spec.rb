require 'spec_helper'

describe QuestionsController do
  context "questions#index" do
    it "should have a response status of 200" do
      get :index
      expect(assigns(:questions)).to eq(Question.all)
      response.status.should eq 200
    end
    it "should display a page for question titles" do
      get :index
      expect(response).to render_template(:index)
    end
  end

  context "question#new" do
    it "should exist" do
      get :new
      response.status.should eq 200
    end
  end

  context "question#create" do
    it "creates a post with valid params" do
      expect {
        post :create, {:question => {:title => "Test Title", :body => "Test Body Shit"}}
        }.to change(Question, :count).by(1)
    end

    it "doesn't create a questions when params are invalid" do
      expect {
        post :create, {:question => {:title => "Where did all the cookies go?"}}
        }.to_not change(Question, :count)
    end

    it "should add a question to the database" do
      expect {
        post :create, :question => {:title => "Test Title", :body => "i am some sort of content"}}.to change(Question, :count)
    end
  end

  context "questions#show" do
    it "should display a page with a question and a thread of answers" do
      my_question = Question.create(title: "this is a title", body: "this is the question body")
      get :show, id: my_question.id
      response.status.should eq 200
    end
  end
end