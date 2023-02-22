class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.integer :user_id
      t.integer :habit_id
      t.integer :counter, default: 0

      t.timestamps
    end
  end
end
