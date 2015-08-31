class LinksController < ApplicationController
  def create
    # get ogp by nokogiri
    url = params[:ogp_url]
    @ogp = get_ogp url

    respond_to do |format|
      format.html
      format.js
    end
  end

  def update
  end
end
