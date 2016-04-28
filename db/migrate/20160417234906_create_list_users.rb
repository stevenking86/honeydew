class CreateListUsers < ActiveRecord::Migration
  def change
    create_table :list_users do |t|
      t.integer :user_id, null: false
      t.integer :list_id, null: false

      t.timestamps null: false
    end
  end
end
