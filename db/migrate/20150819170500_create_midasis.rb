class CreateMidasis < ActiveRecord::Migration
  def change
    create_table :midasis do |t|
      t.string :content
      t.integer :matome_id

      t.timestamps
    end
  end
end
