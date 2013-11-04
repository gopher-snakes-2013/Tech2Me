class User < ActiveRecord::Base

  attr_accessible :email, :password
  has_many :questions
  has_many :answers

  include Clearance::User
end