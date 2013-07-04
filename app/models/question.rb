class Question < ActiveRecord::Base
  attr_accessible :body, :poll_id

  belongs_to :poll

  has_many :choices
  has_many :responses, through: :choices

  validates :body, presence: true

  def results
    count = choices
      .select("body, COUNT(*) AS response_count")
      .joins(:responses)
      .group("choice_id")
    count_hash = {}
    count.each do |response|
      count_hash[response.body] = response.response_count
    end

    count_hash
  end

end
