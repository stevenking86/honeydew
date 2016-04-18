class List < ActiveRecord::Base
  validates :name, presence: true
  validates :user_id, presence: true

  belongs_to :user
  has_many :list_users
  has_many :users, through: :list_users

end
