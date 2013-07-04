class Choice < ActiveRecord::Base
  attr_accessible :body, :question_id
  belongs_to :question

  has_many :responses, dependent: :destroy

  validates :body, presence: true

end
