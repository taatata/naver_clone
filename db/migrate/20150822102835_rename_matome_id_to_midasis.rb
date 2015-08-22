class RenameMatomeIdToMidasis < ActiveRecord::Migration
  def change
    rename_column :midasis, :matome_id, :block_id
  end
end
