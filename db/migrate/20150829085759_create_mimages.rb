class CreateMimages < ActiveRecord::Migration
  def change
    create_table :mimages do |t|
      t.integer :block_id
      t.string :image
      t.string :title
      t.string :q_url
      t.string :comment

      t.timestamps
    end
  end
end
