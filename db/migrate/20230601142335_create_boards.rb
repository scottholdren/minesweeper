class CreateBoards < ActiveRecord::Migration[7.0]
  def change
    create_table :boards do |t|
      t.primary_key :id
      t.timestamp :created_at
      t.string :email
      t.string :name
      t.integer :height
      t.integer :width
      t.integer :mine_count
      t.text :mine_data

      t.timestamps
    end
  end
end
