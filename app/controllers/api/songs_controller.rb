class Api::SongsController < ApplicationController
  def index
    @songs = Song.order("created_DESC")
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
end
