class Doer < ActiveRecord::Base
  validates :task_id, presence: true
  validates :doer_id, presence: true

  belongs_to :task
  belongs_to :doer, class_name: :User
end
