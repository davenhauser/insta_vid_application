class CommentsController < ApplicationController

  def index
      if params[:video_id]
     @video = Video.find(params[:video_id])
     @comments = @video.comments
    else
      comments = Comment.all
  end
end

def new
  @video = Video.find(params[:video_id])
  @comment = Comment.new
end


def create
  @comment = Comment.new(comment_params)
  @comment.author = current_user
  @comment.video_id = params[:video_id]
  if @comment.save
    flash[:notice] = "You've added a comment!"
    redirect_to video_path(params[:video_id])
  else
    render :new
  end
end


def comment_params
    params.require(:comment).permit(:message)
  end
end
