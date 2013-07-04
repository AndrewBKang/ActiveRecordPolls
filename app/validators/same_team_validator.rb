class SameTeamValidator < ActiveModel::EachValidator
  def validate_each(record, attribute_name, value)
    unless record.choice.question.poll.pollster.team.users.find_by_id(value)
      record.errors[attribute_name] << ("different team")
    end
  end
end