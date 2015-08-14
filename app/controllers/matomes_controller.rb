class MatomesController < ApplicationController
  before_action :signed_in_user, only: [:new, :create, :edit, :update, :destroy]

  def index
    @matomes = Matome.all
  end

  def show
    @matome = Matome.find(params[:id])
  end

  def new
    @matome = current_user.matomes.build if signed_in?
  end

  def create
    @matome = current_user.matomes.build(matome_params)
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
