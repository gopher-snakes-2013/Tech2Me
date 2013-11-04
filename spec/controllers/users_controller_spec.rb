require 'spec_helper'

describe UsersController do
  it '#index' do
    get :index
    response.status.should eq(200)
    expect(assigns(:users)).to eq(User.all)
  end

  it '#new' do
    get :new
    response.status.should eq(200)
  end

end