
class SongsController < ApplicationController

  before_action :get_song, only: [:show, :edit, :update]

  def index
    @songs = Song.all
  end

  def show
  end

  def new
  end

  def create
    song = Song.create(name: params[:song][:name])
    redirect_to song
  end

  def edit
  end

  def update
    @song.update(name: params[:song][:name])
  end

  private

  def get_song
    @song = Song.find(params[:id])
  end

end
