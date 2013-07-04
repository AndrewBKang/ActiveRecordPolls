class Poll < ActiveRecord::Base
  attr_accessible :title, :user_id

  belongs_to :user
  has_many :questions
  has_many :choices, through: :questions
  has_many :reponses, through: :choices

end
