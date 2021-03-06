class List < ActiveRecord::Base
  validates :name, presence: true
  validates :creator_id, presence: true

  belongs_to :creator, class_name: :User
  has_many :list_users
  has_many :users, through: :list_users
  has_many :tasks

  def possible_doers
    doers = []
    doers << self.creator
    self.users.each {|user| doers << user}
    doers.uniq
  end

  def get_doer_id_by_name(name)
    id = 0
    self.possible_doers.each {|doer| id =doer.id if doer.name == name}
    id
  end

end
