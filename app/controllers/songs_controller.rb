class SongsController < ApplicationController

  def index
    @songs = Song.all
    render json: @songs
  end

  # def show
  #   @image_set = Playlists.find(params[:id]) # {:images => :likes}
  #   if @image_set
  #     render json: @image_set, :include => [:comments, :images => {:include => :likes}], status: :created, location: @image_set #
  #   else
  #     render json: @image_set.errors, status: :unprocessable_entity
  #   end
  # end

  def create

    # params = {"song" => params}
    binding.pry
    @song = Song.new(allowed_params)
    binding.pry
    if @song.save
      render json: @song, status: :created, location: @song
    else
      render json: @song.errors, status: :unprocessable_entity
    end
  end

  # def update
  #   @image_set = ImageSet.find(params[:id])

  #   if @image_set.update(allowed_params)
  #     render json: @image_set, status: :created, location: @image_set
  #   else
  #     render json: @image_set.errors, status: :unprocessable_entity
  #   end
  # end

  # def destroy
  #   @image_set = ImageSet.find(params[:id])

  #   if @image_set.destroy
  #     render json: @image_set, status: :created, location: @image_set
  #   else
  #     render json: @image_set.errors, status: :unprocessable_entity
  #   end
  # end


  private

  def allowed_params
    params.require(:song).permit(:url, :title, :author, :album, :pitch, :volume, :fade_start_time, :fade_stop_time)
  end

end
