class PicturesController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def show
    @picture = Picture.find(params[:id])
    @comment = Comment.new
    @comments = @picture.comments
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
