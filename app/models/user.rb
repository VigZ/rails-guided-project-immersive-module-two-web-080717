class User < ApplicationRecord
  has_many :followers, :class_name => 'Following', :foreign_key => 'followed_id'
  has_many :followeds, :class_name => 'Following', :foreign_key => 'follower_id'
  has_many :pictures
  has_many :comments
  has_many :reactions
  validates :username, uniqueness: true
  validates :email, uniqueness: true
  before_destroy :pictures_destroy_all
  has_secure_password

  def to_param
    username
  end

  private

  def pictures_destroy_all
    self.pictures.destroy_all
  end


end
