class Api::SongsController < ApplicationController
  after_action :all_songs

  def index
  end

  def create
    Song.create(song_params)
  end

  def update
  end

  def destroy
  end

  private

  def song_parameter
    params.permit(:title, :key, :bpm, :song_data)
  end

  def all_songs
    @songs = Song.order("created_DESC")
    render :songs
  end

  def select_songs
    @song = Song.find(params[:id])
  end
end
