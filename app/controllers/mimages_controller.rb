class MimagesController < ApplicationController
  def create
    @mimage_new = mimage.new(mimage_params)
    @mimage_new.block_id = @block.id
    @mimage_new.save
    @matome = Matome.find(@mimage_new.matome_id)
    @mimage = @matome.mimages.build # new for form
    respond_to do |format|
      format.html { redirect_to edit_matome_url( id: @matome.id ) }
      format.js
    end
  end

  private

    def mimage_params
      params.require(:mimage).permit(:title, :q_url, :comment, :image, :remote_image_url, :remove_image)
    end
end
