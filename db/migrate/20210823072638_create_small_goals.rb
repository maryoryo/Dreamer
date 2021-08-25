class CreateSmallGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :small_goals do |t|
      t.integer :user_id
      t.string :small_goal_content
      t.text :small_goal_why
      t.string :small_goal_when
      t.text :small_goal_action

      t.timestamps
    end
  end
end
