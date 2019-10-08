class HomeVideosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_video
  
  layout "painel"

  def show
  end
  
  def edit
  end

  def update
    if @video.update(video_params)
      redirect_to @video
    else 
      render 'edit'
    end
  end

  private
    
    def set_video
      @video = HomeVideo.find(params[:id])
    end

    def video_params
      params.require(:home_video).permit(:title, :link)
    end
end
