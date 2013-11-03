class User < ActiveRecord::Base

  attr_accessible :email, :password
  belongs_to :question

  include Clearance::User
end