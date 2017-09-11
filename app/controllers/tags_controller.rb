class TagsController < ApplicationController
  def index
  end

  def new
    @tags = Tag.all
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      redirect_to show_picture_path(@tag)
    else
      redirect_to show_picture_path(@tag)
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def tag_params
    params.require(:tag).permit(:name)
  end
end
