require 'spec_helper'

describe AnswersController do

  context "#new" do

    it 'should exist' do
      get :new
      expect(response.status.should eq 200)
    end


  end

end