require 'spec_helper'

describe Question do
  before(:each) do
    @question = Question.new(title: "My little pony", body: "I love my little pony.")
    @question.save
  end

  it "saves title into database" do
    expect(@question.title).to eq("My little pony")
  end

  it "saves body into database" do
    expect(@question.body).to eq("I love my little pony.")
  end

  it "should require a title" do
    Question.create(:title => "").should_not be_valid
  end

  it "should require a body" do
    Question.create(:body => "").should_not be_valid
  end

end