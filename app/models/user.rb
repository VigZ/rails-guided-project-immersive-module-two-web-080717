class User < ApplicationRecord
  has_many :pictures
  has_many :comments, through: :pictures
  validates :username, uniqueness: true
  validates :email, uniqueness: true
  has_secure_password

end
