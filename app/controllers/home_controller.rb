class HomeController < ApplicationController
  def index
    respond_to do |format|
      format.html 
      format.json {render json: {artist_name: Rails.configuration.x.artist.name, image: ArtworkImage.last } }
    end
  end
end