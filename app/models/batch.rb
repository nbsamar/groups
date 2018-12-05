class Batch < ApplicationRecord

  validates :name, presence: true

  has_many :users_batches_roles
  has_many :users, through: :users_batches_roles
  has_many :roles, through: :users_batches_roles

  has_many :posts
  has_many :comments, through: :posts
  has_many :replies, through: :comments

  def owner
    users_batches_roles.where(role_id: Role.owner.id).first.user
  end

end
