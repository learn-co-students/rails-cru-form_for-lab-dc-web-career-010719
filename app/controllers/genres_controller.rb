class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    genre = Genre.create(genre_params)
    redirect_to genre
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    genre = Genre.update(params[:id], genre_params)
    redirect_to genre
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end
end
