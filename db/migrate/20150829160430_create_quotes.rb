class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.integer :block_id
      t.string :quote
      t.string :q_url
      t.string :q_title
      t.string :comment

      t.timestamps
    end
  end
end
