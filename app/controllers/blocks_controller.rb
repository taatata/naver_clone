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

  def order_up
    block = Block.find(params[:block_id])
    matome = Matome.find(block.matome_id)
    if block.order != 0
      block2 = matome.blocks.find_by(order: block.order - 1)
      block.order -= 1
      block.save
      block2.order += 1
      block2.save
    end
    redirect_to edit_matome_url(id: matome.id)
  end

  def order_down
    block = Block.find(params[:block_id])
    matome = Matome.find(block.matome_id)
    block2 = matome.blocks.find_by(order: block.order + 1)
    if block2
      block.order += 1
      block.save
      block2.order -= 1
      block2.save
    end
    redirect_to edit_matome_url(id: matome.id)
  end
end
