class Choice < ActiveRecord::Base
  attr_accessible :body, :question_id
  belongs_to :question

  has_many :responses

  validates :body, presence: true

end
