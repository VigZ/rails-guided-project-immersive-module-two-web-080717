class PicturesController < ApplicationController

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    @picture.user_id = current_user.id
    if @picture.save
      redirect_to picture_path(@picture)
    else
      redirect_to new_picture_path
    end
  end

  def show
    @picture = Picture.find(params[:id])
    @comment = Comment.new(picture_id: @picture.id, user_id: 1)

    @comments = @picture.comments
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def picture_params
    params.require(:picture).permit(:image_url, :title, :user_id, {:tag_ids => []})
  end
end
