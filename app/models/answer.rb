class Answer < ActiveRecord::Base
  attr_accessible :body, :question_id, :author
  validates :body, :presence => true
  belongs_to :question
  belongs_to :user
end
