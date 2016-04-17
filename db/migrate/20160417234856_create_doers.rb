class CreateDoers < ActiveRecord::Migration
  def change
    create_table :doers do |t|

      t.timestamps null: false
    end
  end
end
