class BlocksController < ApplicationController
  def destroy
    block = Block.find(params[:id])

    block_order = block.order
    matome_id = block.matome_id
    matome = Matome.find(matome_id)

    block.destroy

    matome.blocks.each do |b|
      if b.order > block_order
        b.order -= 1
      end
    end

    redirect_to edit_matome_url(id: matome_id)
  end
end
