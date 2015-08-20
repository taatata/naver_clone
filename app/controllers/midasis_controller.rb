class MidasisController < ApplicationController
  def create
    @midasi = Midasi.new(midasi_params)
    @midasi.save
    @matome = Matome.find(@midasi.matome_id)
    respond_to do |format|
      format.html { redirect_to edit_matome_url( id: @matome.id ) }
      format.js
    end
  end

  private

    def midasi_params
      params.require(:midasi).permit(:content, :matome_id)
    end
end
