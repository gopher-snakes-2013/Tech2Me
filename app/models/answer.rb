class Answer < ActiveRecord::Base
  validates_presence_of :author, :answer
  belongs_to :question
  belongs_to :user
end
