class Role < ApplicationRecord

  def self.owner
    where(role_name: "Owner").first
  end

  def self.admin
    where(role_name: "Admin").first
  end

  def self.member
    where(role_name: "Member").first
  end

end
