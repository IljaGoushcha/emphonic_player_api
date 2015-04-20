class ConnectionsController < ApplicationController

  def index
    @connections = Connection.all
    render json: @connections
  end

  def show
    cell_id = params[:id]
    playlist_id = Playlist.find_by(cell: cell_id)[:id]
    # binding.pry
    @playlist_with_songs = PlaylistsSong.where(playlist_id: playlist_id) # {:images => :likes}
    # playlist_songs = Song.where(id: song_ids)
    # binding.pry

    if @playlist_with_songs
      render json: @playlist_with_songs, status: :created, location: @playlist_with_songs
    else
      render json: @playlist_with_songs.errors, status: :unprocessable_entity
    end
  end

  # def create

  #   @song = Song.new(allowed_params)

  #   @playlist = Playlist.find_by(name: params[:playlist][:playlist])
  #   if @playlist == nil
  #     @playlist = Playlist.new(name: params[:playlist][:playlist], cell: 3)
  #     @playlist.save
  #     # render json: @playlist, status: :created, location: @playlist
  #   end

  #   if @song.save
  #     render json: @song, status: :created, location: @song
  #   else
  #     render json: @song.errors, status: :unprocessable_entity
  #   end


  #   @playlist_song = PlaylistsSong.new(song_id: @song[:id], playlist_id: @playlist[:id])
  #   @playlist_song.save

  # end

  # def update
  #   @song = Song.find(params[:id])

  #   if @song.update(allowed_params)
  #     render json: @song, status: :created, location: @song
  #   else
  #     render json: @song.errors, status: :unprocessable_entity
  #   end
  # end

  # def destroy
  #   @song = Song.find(params[:id])

  #   if @song.destroy
  #     render json: @song, status: :created, location: @song
  #   else
  #     render json: @song.errors, status: :unprocessable_entity
  #   end
  # end


  # private

  # def allowed_params
  #   params.require(:song).permit(:url, :title, :author, :album, :pitch, :volume, :fade_start_time, :fade_stop_time)
  # end

end
