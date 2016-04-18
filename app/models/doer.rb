class Doer < ActiveRecord::Base
  validates :task_id, presence: true
  validates :user_id, presence: true

  belongs_to :task
end
