class PlaylistsController < ApplicationController

  def index
    @playlists = Playlist.all
    render json: @playlists
  end

  def show
    #  :include => :songs,
    @playlist = Playlist.order_and_fill_playlist_songs(params[:id])
    # @playlist = Playlist.find(params[:id])
    if @playlist
      render json: @playlist, status: :created, location: @playlist
    else
      render json: @playlist.errors, status: :unprocessable_entity
    end
  end

  def create
    @playlist = Playlist.new(allowed_params)

    if @playlist.save
      render json: @playlist, status: :created, location: @playlist
    else
      render json: @playlist.errors, status: :unprocessable_entity
    end
  end

  def update
    @playlist = Playlist.find(params[:id])

    if @playlist.update(allowed_params)
      render json: @playlist, status: :created, location: @playlist
    else
      render json: @playlist.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @playlist = Playlist.find(params[:id])

    if @playlist.destroy
      render json: @playlist, status: :created, location: @playlist
    else
      render json: @playlist.errors, status: :unprocessable_entity
    end
  end


  private

  def allowed_params
    params.require(:playlist).permit(:name)
  end

end
