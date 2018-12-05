class Comment < ApplicationRecord

  validates_presence_of :description

  belongs_to :user
  belongs_to :batch
  belongs_to :post
  has_many :replies

end