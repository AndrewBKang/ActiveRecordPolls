class UniqueRespondantValidator < ActiveModel::EachValidator
  def validate_each(record, attribute_name, value)
    if record.choice.question.responses.find_by_respondant_id(value)
      record.errors[attribute_name] << ("already answered")
    end
  end
end