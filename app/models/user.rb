class User < ActiveRecord::Base
  validates :email, presence: true
  validates :name, presence: true
  has_secure_password
end
