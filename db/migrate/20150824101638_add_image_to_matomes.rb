class AddImageToMatomes < ActiveRecord::Migration
  def change
    add_column :matomes, :image, :string
  end
end
