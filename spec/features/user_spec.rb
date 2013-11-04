 require 'spec_helper'

 feature "user should be able to sign in" do

  it 'should allow a registered user to login' do
    sign_in_user
    expect(page).to have_content "ken@ken.ken"
  end
end