class PlaylistFoldersController < ApplicationController

  def index
    @playlist_folders = PlaylistFolder.all
    render json: @playlist_folders
  end

  def show
    @playlist_folder = PlaylistFolder.find(params[:id])
    if @playlist_folder
      render json: @playlist_folder, :include => [:playlist => {:include => :songs}], status: :created, location: @playlist_folder
    else
      render json: @playlist_folder.errors, status: :unprocessable_entity
    end
  end

  def create
    @playlist_folder = PlaylistFolder.new(allowed_params)

    if @playlist_folder.save
      render json: @playlist_folder, status: :created, location: @playlist_folder
    else
      render json: @playlist_folder.errors, status: :unprocessable_entity
    end
  end

  def update
    @playlist_folder = PlaylistFolder.find(params[:id])

    if @playlist_folder.update(allowed_params)
      render json: @playlist_folder, status: :created, location: @playlist_folder
    else
      render json: @playlist_folder.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @playlist_folder = PlaylistFolder.find(params[:id])

    if @playlist_folder.destroy
      render json: @playlist_folder, status: :created, location: @playlist_folder
    else
      render json: @playlist_folder.errors, status: :unprocessable_entity
    end
  end


  private

  def allowed_params
    params.require(:song).permit(:url, :title, :author, :album, :pitch, :volume, :fade_start_time, :fade_stop_time)
  end

end
