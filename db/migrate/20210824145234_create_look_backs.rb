class CreateLookBacks < ActiveRecord::Migration[5.2]
  def change
    create_table :look_backs do |t|
      t.integer :user_id
      t.datetime :write_time
      t.integer :achievement_check
      t.text :good_thing
      t.text :bad_thing

      t.timestamps
    end
  end
end
