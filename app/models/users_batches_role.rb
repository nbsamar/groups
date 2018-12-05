class UsersBatchesRole < ApplicationRecord

  belongs_to :user
  belongs_to :batch
  belongs_to :role

end
