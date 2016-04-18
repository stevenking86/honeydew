class User < ActiveRecord::Base
  validates :email, presence: true
  validates :name, presence: true
  has_secure_password

  has_many :lists, foreign_key: "creator_id"
  has_many :list_users
  has_many :lists, through: :list_users
  has_many :doers, foreign_key: "doer_id"
  has_many :tasks, through: :doers



end
