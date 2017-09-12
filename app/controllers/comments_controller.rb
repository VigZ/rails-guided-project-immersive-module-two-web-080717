class CommentsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.save
    
    redirect_to picture_path(@comment.picture)
    # else
    #   redirect_to picture_path(params[:id])
    # end
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :picture_id)
  end

end
