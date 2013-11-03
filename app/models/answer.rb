class Answer < ActiveRecord::Base
  attr_accessible :author, :answer
  validates_presence_of :author, :answer
  belongs_to :question
end
