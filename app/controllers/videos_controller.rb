class VideosController < ApplicationController

def index
  @videos = Video.all
end

def show
  @video = Video.find(params[:id])
end

def new
  @video = Video.new
end

def create
  @video = Video.new(self.video_params)

    if @video.save
      redirect_to videos_path
    else
      render :new
    end
end

  def video_params
    params.require(:video).permit(:title, :tags, :video_link, :filmed_when, :filmed_where)
  end
end
