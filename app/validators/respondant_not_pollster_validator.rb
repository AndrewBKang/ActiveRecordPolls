class RespondantNotPollsterValidator < ActiveModel::EachValidator
  def validate_each(record, attribute_name, value)
    if record.choice.question.poll.pollster.id == value
      record.errors[attribute_name] << ("can't answer your own question")
    end
  end
end