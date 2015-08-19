class MatomesController < ApplicationController
  before_action :signed_in_user, only: [:new, :create, :edit, :update, :destroy]

  def index
    @matomes = Matome.limit(1000).paginate(page: params[:page], per_page: 20)
  end

  def show
    @matome = Matome.find(params[:id])
  end

  def new
    @matome = current_user.matomes.build if signed_in?
    @midasi = @matome.midasis.build
  end

  def create
    @matome = current_user.matomes.build(matome_params)
    if @matome.save
      redirect_to @matome
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
      params.require(:matome).permit(:title, :content)
    end
end
