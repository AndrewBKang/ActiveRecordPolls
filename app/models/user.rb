class User < ActiveRecord::Base
  attr_accessible :name

  has_many :polls
  has_many :responses
  has_many :questions, through: :polls
  has_many :choices, through: :questions

end
