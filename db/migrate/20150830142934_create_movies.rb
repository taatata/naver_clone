class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.integer :block_id
      t.string :url
      t.string :q_url
      t.string :title
      t.string :comment

      t.timestamps
    end
  end
end
