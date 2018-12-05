class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_presence_of :first_name

  has_many :users_batches_roles
  has_many :batches, through: :users_batches_roles
  has_many :roles, through: :users_batches_roles

  has_many :posts
  has_many :comments
  has_many :replies

end
