class MidasisController < ApplicationController
  def create
    @midasi_new = Midasi.new(midasi_params)
    @midasi_new.save
    @matome = Matome.find(@midasi_new.matome_id)
    @midasi = @matome.midasis.build # new for form
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
