class CreateMediumGoalUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :medium_goal_users do |t|
      t.references :user, foreign_key: true
      t.references :medium_goal, foreign_key: true

      t.timestamps
    end
  end
end
