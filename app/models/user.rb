class User < ActiveRecord::Base
  validates :email, presence: true
  validates :name, presence: true
  has_secure_password

  has_many :lists
  has_many :list_users
  has_many :lists, through: :list_users
  has_many :doers
  has_many :tasks, through: :doers


  def all_lists
    all_lists = self.lists
    all_lists << List.where(id: ListUser.find_by(user_id: self.id).list_id)
    return all_lists
  end

end
