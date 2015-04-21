class SongsController < ApplicationController

  def index
    @songs = Song.all
    render json: @songs
  end

  def show
    @song = Song.find(params[:id]) # {:images => :likes}
    if @song
      render json: @song, status: :created, location: @song
    else
      render json: @song.errors, status: :unprocessable_entity
    end
  end

  def create

    @song = Song.new(allowed_params)

    if @song.save
      render json: @song, status: :created, location: @song
    else
      render json: @song.errors, status: :unprocessable_entity
    end

    @playlist = Playlist.find_by(name: params[:playlist][:playlist])
    if @playlist == nil
      @playlist = Playlist.new(name: params[:playlist][:playlist], cell: params[:playlist][:cell])
      @playlist.save
      # render json: @playlist, status: :created, location: @playlist
    end

    @connection = Connection.new(song_id: @song[:id], playlist_id: @playlist[:id])
    @connection.save

  end

  def update
    @song = Song.find(params[:id])

    if @song.update(allowed_params)
      render json: @song, status: :created, location: @song
    else
      render json: @song.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @song = Song.find(params[:id])

    if @song.destroy
      render json: @song, status: :created, location: @song
    else
      render json: @song.errors, status: :unprocessable_entity
    end
  end


  private

  def allowed_params
    params.require(:song).permit(:url, :title, :author, :album, :pitch, :volume, :fade_start_time, :fade_stop_time)
  end

end
