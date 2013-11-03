class Answer < ActiveRecord::Base
  validates_presence_of :author, :answer
  has_many :questions
end
