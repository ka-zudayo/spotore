class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    if @video.save
      redirect_to @video, notice: 'Video was successfully uploaded.'
    else
      render :new
    end
  end

  private

  def video_params
    params.require(:video).permit(:title, :description, :video)
  end
end

