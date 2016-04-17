class CreateDoers < ActiveRecord::Migration
  def change
    create_table :doers do |t|
      t.integer :task_id, null: false
      t.integer :user_id, null: false

      t.timestamps null: false
    end
  end
end
