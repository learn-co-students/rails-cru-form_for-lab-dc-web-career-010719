
class GenresController < ApplicationController

  before_action :get_genre, only: [:show, :edit, :update]

  def show

  end

  def new
    # @genre = Genre.new
  end

  def create
    genre = Genre.create(name: params[:genre][:name])
    redirect_to genre
  end

  def edit
  end

  def update
    @genre.update(name: params[:genre][:name])
    @genre.save
    redirect_to @genre
  end

  private

  def get_genre
    @genre = Genre.find(params[:id])
  end

end
