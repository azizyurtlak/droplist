class AddDueDate < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :due_time, :datetime
    add_column :items, :reminder_time, :integer
  end
end
