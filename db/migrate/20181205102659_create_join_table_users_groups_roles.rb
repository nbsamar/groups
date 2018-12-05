class CreateJoinTableUsersGroupsRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :users_groups_roles, id: false do |t|
      t.integer :user_id
      t.integer :group_id
      t.integer :role_id
      t.boolean :approved
      t.integer :invitee_id
    end
  end
end
