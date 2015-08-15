class AddTitleToMatomes < ActiveRecord::Migration
  def change
    add_column :matomes, :title, :string
  end
end
