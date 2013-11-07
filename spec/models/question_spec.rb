require 'spec_helper'

describe Question do
  let(:question) { Question.create(title: "My little pony", body: "I love my little pony.") }

  it "saves title into database" do
    expect(question.title).to eq("My little pony")
  end

  it "saves body into database" do
    expect(question.body).to eq("I love my little pony.")
  end

  it "should require a title" do
    # lines 16 and 17 are equivalent but rspec likes 16
    expect(Question.new(:title => "")).to be_invalid
    Question.new(:title => "").should_not be_valid
  end

  it "should require a body" do
    Question.new(:body => "").should_not be_valid
  end

end
