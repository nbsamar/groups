class Post < ApplicationRecord

  validates_presence_of :description

  belongs_to :user
  belongs_to :batch
  has_many :comments
  has_many :replies, through: :comments

end