require 'spec_helper'

describe QuestionsController do

  context "questions#index" do

    it "should display a page for question titles" do
      get :index
      expect(response).to render_template(:index)
    end

  end
end
