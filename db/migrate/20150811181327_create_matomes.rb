class CreateMatomes < ActiveRecord::Migration
  def change
    create_table :matomes do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
    add_index :matomes, [:user_id, :created_at]
  end
end
