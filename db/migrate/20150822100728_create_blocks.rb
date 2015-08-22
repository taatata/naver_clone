class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.integer :matome_id
      t.integer :order

      t.timestamps
    end
  end
end
