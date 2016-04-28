class ListUser < ActiveRecord::Base
  validates :user_id, presence: true
  validates :list_id, presence: true

  belongs_to :user
  belongs_to :list

end
