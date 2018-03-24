class ImagesController < ApplicationController
  before_action :authenticate_model!
  before_action :find_image, :only => [:show, :edit , :update, :destroy]
  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end
 
  def create
    @image = Image.new(image_params)
    respond_to do |format|
      if @image.save
        format.html { redirect_to images_path, notice: 'image was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end
 
  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @image.update(image_params)
        format.html { redirect_to images_path, notice: 'image was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @image.destroy
    redirect_to images_path
  end

  private
  def find_image
    @image = Image.find(params[:id])
  end

  def image_params
    params.require(:image).permit!
  end
end
