class MatomesController < ApplicationController

  def index
    @matomes = Matome.all
  end

  def show
    @matome = Matome.find(params[:id])
  end

  def new
    @matome = Matome.new
  end

  def create
    @matome = Matome.new(matome_params)
    if @matome.save
      redirect_to @matme
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @matome.update_attributes(matome_params)
      redirect_to @matome
    else
      render 'edit'
    end
  end

  private

    def matome_params
      params.require(:matome).permit(:content)
    end
end
