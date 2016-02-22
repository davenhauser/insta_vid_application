class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
  @comment = Comment.new(self.comment_params)

    if @comment.save
      redirect_to videos_path
    else
      render :new
    end
end


def comment_params
    params.require(:comment).permit(:message)
  end
end
