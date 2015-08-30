class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :block_id
      t.string :image
      t.string :q_url
      t.string :q_title
      t.string :q_description
      t.string :comment

      t.timestamps
    end
  end
end
