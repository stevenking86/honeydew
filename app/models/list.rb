class List < ActiveRecord::Base
  validates :name, presence: true
  validates :creator_id, presence: true

  belongs_to :creator, class_name: :User
  has_many :list_users
  has_many :users, through: :list_users
  has_many :tasks

end
