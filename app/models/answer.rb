class Answer < ActiveRecord::Base
  attr_accessible :body :question_id :author
  validates_presence_of :body
  belongs_to :question
  belongs_to :user
end
