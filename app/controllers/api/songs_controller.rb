class Api::SongsController < ApplicationController
  def index
    all_songs
  end

  def create
    @song = Song.new(song_params)
    # 画像データがあればattachする
    if params[:image] != ""
      @song.image.attach(params[:image])
    end
    # 音楽データがあればattachする
    if params[:song_data] != ""
      @song.song_data.attach(params[:song_data])
    end
    if @song.save
      all_songs
    else
      @error_messages = @song.errors.messages
      error_songs
    end
  end

  def update
    all_songs
  end

  def destroy
    all_songs
  end

  private

  def song_params
    params.permit(:title, :key, :bpm)
  end

  def all_songs
    @songs = Song.order('created_at DESC')
    # songs.json.jbuilderを返す
    render :songs
  end

  def error_songs
    render :error_message, status: 422
  end

  def select_song
    @song = Song.find(params[:id])
  end
end
