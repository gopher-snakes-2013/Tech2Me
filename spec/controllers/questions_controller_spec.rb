require 'spec_helper'

describe QuestionsController do
  it "#index" do
    get :index
    expect(assigns(:questions)).to eq(Question.all)
    response.status.should eq 200
  end

  it "#new" do
    get :new
    response.status.should eq 200
  end

  context "#create" do
    it "creates a post with valid params" do
      expect {
        sign_in
        post :create, {:question => {:title => "Test Title", :body => "Test Body Shit"}}
      }.to change(Question, :count).by(1)
    end

    it "doesn't create a questions when params are invalid" do
      expect {
        sign_in
        post :create, {:question => {:title => "Where did all the cookies go?"}}
      }.to_not change(Question, :count)
    end
  end
end