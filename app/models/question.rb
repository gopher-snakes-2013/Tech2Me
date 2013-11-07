class Question < ActiveRecord::Base
  attr_accessible :title, :body, :user
  validates :title, :body, presence: true
  belongs_to :user
  has_many :answers
end
