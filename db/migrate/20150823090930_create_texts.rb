class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.string :content
      t.integer :block_id

      t.timestamps
    end
  end
end
