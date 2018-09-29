class CreateGratitudes < ActiveRecord::Migration[5.2]
  def change
    create_table :gratitudes do |t|
      t.integer :account_id
      t.text :body

      t.timestamps
    end
  end
end
