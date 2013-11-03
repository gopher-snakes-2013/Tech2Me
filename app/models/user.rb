class User < ActiveRecord::Base

  attr_accessible :email, :password

  include Clearance::User
end