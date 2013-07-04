class AddIndexesToForeignKeys < ActiveRecord::Migration
  def change
    add_index :responses, :choice_id
    add_index :responses, :respondant_id
    add_index :choices, :question_id
    add_index :questions, :poll_id
    add_index :polls, :pollster_id
  end
end
