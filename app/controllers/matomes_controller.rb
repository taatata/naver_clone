class MatomesController < ApplicationController

  before_action :signed_in_user, only: [:new, :create, :edit, :update, :destroy]

  def index
    @matomes = Matome.limit(1000).paginate(page: params[:page], per_page: 20)
  end

  def show
    @matome = Matome.find(params[:id])
  end

  def new
    @matome = current_user.matomes.build
    if @matome.save
      redirect_to edit_matome_url(id: @matome.id)
    end
  end

  def create
    @matome = current_user.matomes.build(matome_params)
    if @matome.save!
      respond_to do |format|
        format.html { redirect_to edit_matome_url(id: @matome.id)}
        format.js
      end
    else
      render 'new'
    end
  end

  def edit
    @matome = Matome.find(params[:id])
    @block = @matome.blocks.build
    @is_edit = true
  end

  def update
    @matome = Matome.find(params[:id])
    @matome.blocks.each do |b|
      b.order += 1
    end
    if @matome.update_attributes!(matome_params)
      respond_to do |format|
        format.html { redirect_to edit_matome_url(id: @matome.id)}
        format.js
      end
    else
      render 'edit'
    end
  end

  private

    def matome_params
      params
      .require(:matome)
      .permit(:title, :content, :image, :remote_image_url, :remove_image,
              blocks_attributes: [:id, :order,
                                    midasi_attributes: [:id, :content],
                                    text_attributes: [:id, :content],
                                    mimage_attributes: [:id, :title, :q_url, :comment, :image, :remote_image_url, :remove_image],
                                    quote_attributes: [:id, :quote, :q_url, :q_title, :comment],
                                    movie_attributes: [:id, :url, :q_url, :q_title, :comment],
                                    link_attributes: [:id, :q_url, :q_title, :q_description, :comment, :image, :remote_image_url, :remove_image]
      ])
    end

end
