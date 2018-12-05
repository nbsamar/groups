class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.integer :role_id
      t.string  :role_name
    end
  end
end
