class Question < ActiveRecord::Base
  attr_accessible :title, :body, :user_id
  validates :title, presence: true
  validates :body, presence: true
  belongs_to :user
  has_many :answers
end