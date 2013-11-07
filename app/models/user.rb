class User < ActiveRecord::Base
  include Clearance::User

  attr_accessible :email, :password
  has_many :questions
  has_many :answers

end
