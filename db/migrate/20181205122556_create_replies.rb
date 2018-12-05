class CreateReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :replies do |t|
      t.string :description
      t.references :user
      t.references :comment

      t.timestamps
    end
  end
end
