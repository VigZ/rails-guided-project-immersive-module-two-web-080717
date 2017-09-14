class FollowingsController < ApplicationController
  def index
    @user = User.find()
  end

  def new
    @following = Following.new
  end

  def create
    @following = Following.new(following_params)
    # @following.followed_id = @user.id
    # @following.follower_id = current_user.id
    if @following.save
      redirect_to user_path(@following.followed)
    else
      #show error message on page
      # render not redirect
      redirect_to picture_path(@following.picture)
    end
  end

  def show
    @user = User.find(params[:id])
    # byebug
    # @following = Following.find_by(followed_id: @user.id)
  end

  def destroy
    @following = Following.find(params[:id])
    @user = User.find(@following.followed_id)
    @following.destroy
    redirect_to user_path(@user)
  end

 private

  def following_params
    params.require(:following).permit(:follower_id, :followed_id)
  end

end
