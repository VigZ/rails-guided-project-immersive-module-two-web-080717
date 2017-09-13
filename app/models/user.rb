class User < ApplicationRecord
  has_many :pictures
  has_many :comments
  validates :username, uniqueness: true
  validates :email, uniqueness: true
  has_secure_password

  def to_param
    username
  end


end
