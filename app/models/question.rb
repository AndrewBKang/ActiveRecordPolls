class Question < ActiveRecord::Base
  attr_accessible :body, :poll_id

  belongs_to :poll

  has_many :choices, dependent: :destroy
  has_many :responses, through: :choices

  validates :body, presence: true

  def results
    count = choices
      .select("body, COUNT(*) AS num_responses")
      .joins(:responses)
      .group("choice_id")
    count_hash = {}
    count.each { |response| count_hash[response.body] = response.num_responses }
    count_hash
  end

end
