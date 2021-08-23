class CreateMediumGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :medium_goals do |t|
      t.string :medium_goal_content
      t.text :medium_goal_why
      t.string :medium_goal_when
      t.text :medium_goal_action

      t.timestamps
    end
  end
end
