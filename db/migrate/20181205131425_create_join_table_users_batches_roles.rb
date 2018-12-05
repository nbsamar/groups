class CreateJoinTableUsersBatchesRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :users_batches_roles, id: false do |t|
      t.integer :user_id
      t.integer :batch_id
      t.integer :role_id
      t.boolean :approved
      t.integer :invitee_id
      t.integer :approver_id
      t.boolean :left_batch

      t.timestamps
    end
  end
end
