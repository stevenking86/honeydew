class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description, null: false
      t.integer :completed, null: false, default: 0
      t.date :due_date
      t.integer :list_id

      t.timestamps null: false
    end
  end
end
