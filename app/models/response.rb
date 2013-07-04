class Response < ActiveRecord::Base
  attr_accessible :choice_id, :respondant_id

  belongs_to :choice
  belongs_to :respondant, class_name: "User"

  validates :respondant_id, unique_respondant: true
  #

end
