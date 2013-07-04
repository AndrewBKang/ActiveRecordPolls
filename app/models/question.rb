class Question < ActiveRecord::Base
  attr_accessible :body, :poll_id

  belongs_to :poll

  has_many :choices
  has_many :responses, through: :choices

  validates :body, presence: true

end
