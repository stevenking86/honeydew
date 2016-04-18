class ListUser < ActiveRecord::Base
  validates :user_id, presence: true
  validates :list_id, presence: true
end
