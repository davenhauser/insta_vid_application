class VideosController < ApplicationController

  def index
    @videos = Video.all
  end

  def show
    @video = Video.find(params[:id])
    @comment = Comment.new
  end

  def new
    if current_user.present?
    @video = Video.new
    else
      redirect_to videos_path
    end
  end

  def create
    @video = Video.new(self.video_params)
    @video.user = current_user
    if @video.save
      redirect_to videos_path
    else
      render :new
    end
  end

  def edit
    @video = Video.find(params[:id])
    if  @video.user != current_user
      redirect_to videos_path
    end
  end

  def update
    @video = Video.find(params[:id])
    if @video.update(self.video_params)
      redirect_to  video_path
    else
      render :edit
    end
  end

   def destroy
    @video = Video.find(params[:id])
    @video = @video.destroy
    flash[:message] = "'#{@video.title}' removed!"
    redirect_to videos_path
   end


    def video_params
      params.require(:video).permit(:title, :tags, :video_link, :filmed_when, :filmed_where)
    end
  end
