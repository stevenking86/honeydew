class Task < ActiveRecord::Base
  validates :description, presence: true
  validates :completed, presence: true
  validates :list_id, presence: true

  has_many :doers
  belongs_to :list
end
