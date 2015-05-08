 module Admin 
  class ArtworkImagesController < ApplicationController
    before_action :set_artwork_image, only: [:show, :edit, :update, :destroy]
  
    # GET /artwork_images
    # GET /artwork_images.json
    def index
      @artwork_images = ArtworkImage.all
    end
  
    # GET /artwork_images/1
    # GET /artwork_images/1.json
    def show
    end
  
    # GET /artwork_images/new
    def new
      @artwork_image = ArtworkImage.new
    end
  
    # GET /artwork_images/1/edit
    def edit
    end
  
    # POST /artwork_images
    # POST /artwork_images.json
    def create
      @artwork_image = ArtworkImage.new(artwork_image_params)
  
      respond_to do |format|
        if @artwork_image.save
          format.html { redirect_to admin_artwork_images_path, notice: 'Artwork was successfully created.' }
          format.json { render :show, status: :created, location: @artwork }
        else
          format.html { render :new }
          format.json { render json: @artwork.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /artwork_images/1
    # PATCH/PUT /artwork_images/1.json
    def update
      respond_to do |format|
        if @artwork.update(artwork_params)
          format.html { redirect_to @artwork, notice: 'Artwork was successfully updated.' }
          format.json { render :show, status: :ok, location: @artwork }
        else
          format.html { render :edit }
          format.json { render json: @artwork.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /artwork_images/1
    # DELETE /artwork_images/1.json
    def destroy
      @artwork_image.destroy
      respond_to do |format|
        format.html { redirect_to artwork_images_url, notice: 'Artwork was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_artwork_image
        @artwork_image = ArtworkImage.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def artwork_image_params
        params.require(:artwork_image).permit(:description, :shot_type, :artwork_id, :image_url)
      end
  end
end
