class Task < ActiveRecord::Base
  validates :description, presence: true
  validates :completed, presence: true
  validates :list_id, presence: true

  has_many :doers
  belongs_to :list

  def completeness
    if completed == 0
      "Incomplete"
    else
      "Completed"
    end
  end

  def get_doer_names
    names = ""
    self.doers.each do |doer|
      names << doer.doer_name + ", "
    end
    names[0..-3]
  end
end
