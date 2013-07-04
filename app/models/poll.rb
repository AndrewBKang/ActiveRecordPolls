class Poll < ActiveRecord::Base
  attr_accessible :title, :pollster_id

  belongs_to :pollster, class_name: "User"
  has_many :questions, dependent: :destroy
  has_many :choices, through: :questions
  has_many :reponses, through: :choices

  validates :title, presence: true

end
