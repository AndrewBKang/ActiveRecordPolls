class ChangePollAndResponseFk < ActiveRecord::Migration
  def change
    change_table :polls do |t|
      t.rename :user_id, :pollster_id
    end

    change_table :responses do |t|
      t.rename :user_id, :respondant_id
    end
  end
end
