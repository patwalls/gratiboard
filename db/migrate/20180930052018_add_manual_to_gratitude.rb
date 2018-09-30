class AddManualToGratitude < ActiveRecord::Migration[5.2]
  def change
    add_column :gratitudes, :manual, :boolean, default: false
  end
end
