class PhotosController < ApplicationController

  def index
    @photos = Image.all
    @categories = Category.all
  end

  def show
    @photo = Image.find_by(:id => params[:id])
    @photos = Image.all
  end

  def new
  end

  def search

       @photos = Image.search(params[:search]).order(:prod_id)
       @query  = params[:search]
  end

  def create
    @photo = Image.new

    if @photo.save
      redirect_to photos_url
    else
      render 'new'
    end
  end

  def edit
    @photo = Image.find_by(:id => params[:id])
  end

  def update
    @photo = Image.find_by(:id => params[:id])

    if @photo.save
      redirect_to photos_url
    else
      render 'new'
    end
  end

  def destroy
    @photo = Image.find_by(:id => params[:id])
    @photo.destroy
    redirect_to photos_url
  end
end
