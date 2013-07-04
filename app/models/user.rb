class User < ActiveRecord::Base
  attr_accessible :name, :team_id

  belongs_to :team

  has_many :polls, dependent: :nullify
  has_many :responses
  has_many :questions, through: :polls
  has_many :choices, through: :questions

  validates :name, presence: true

end
