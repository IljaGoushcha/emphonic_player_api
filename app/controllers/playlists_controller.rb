class PlaylistsController < ApplicationController

  def index
    @playlists = Playlist.all
    render json: @playlists
  end

  # def show
  #   @image_set = Playlists.find(params[:id]) # {:images => :likes}
  #   if @image_set
  #     render json: @image_set, :include => [:comments, :images => {:include => :likes}], status: :created, location: @image_set #
  #   else
  #     render json: @image_set.errors, status: :unprocessable_entity
  #   end
  # end

  # def create
  #   @image_set = ImageSet.new(allowed_params)

  #   if @image_set.save
  #     render json: @image_set, status: :created, location: @image_set
  #   else
  #     render json: @image_set.errors, status: :unprocessable_entity
  #   end
  # end

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


  # private

  # def allowed_params
  #   params.require(:image_set).permit(:voting_criteria, :total_likes, :user_id)
  # end

end
