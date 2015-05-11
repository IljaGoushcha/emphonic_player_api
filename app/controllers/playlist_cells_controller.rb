class PlaylistCellsController < ApplicationController

  def index
    @playlist_cells = PlaylistCell.all
    render json: @playlist_cells
  end

  def show
    @playlist_cell = PlaylistCell.find(params[:id])
    if @playlist_cell
      render json: @playlist_cell, :include => [:playlist => {:include => :songs}], status: :created, location: @playlist_cell
    else
      render json: @playlist_cell.errors, status: :unprocessable_entity
    end
  end

  def create
    @playlist_cell = PlaylistCell.new(allowed_params)

    if @playlist_cell.save
      render json: @playlist_cell, status: :created, location: @playlist_cell
    else
      render json: @playlist_cell.errors, status: :unprocessable_entity
    end
  end

  def update
    @playlist_cell = PlaylistCell.find(params[:id])

    if @playlist_cell.update(allowed_params)
      render json: @playlist_cell, status: :created, location: @playlist_cell
    else
      render json: @playlist_cell.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @playlist_cell = PlaylistCell.find(params[:id])

    if @playlist_cell.destroy
      render json: @playlist_cell, status: :created, location: @playlist_cell
    else
      render json: @playlist_cell.errors, status: :unprocessable_entity
    end
  end


  private

  def allowed_params
    params.require(:song).permit(:url, :title, :author, :album, :pitch, :volume, :fade_start_time, :fade_stop_time)
  end

end
