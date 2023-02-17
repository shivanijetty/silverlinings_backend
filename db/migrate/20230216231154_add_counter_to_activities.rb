class AddCounterToActivities < ActiveRecord::Migration[6.1]
  def change
    add_column :activities, :counter, :integer
  end
end
