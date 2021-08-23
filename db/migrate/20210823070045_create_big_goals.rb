class CreateBigGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :big_goals do |t|
      t.integer :user_id
      t.string :big_goal_content
      t.text :big_goal_why
      t.string :big_goal_when
      t.text :big_goal_action

      t.timestamps
    end
  end
end
