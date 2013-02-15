class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.integer :parent_id
      t.integer :position
      t.string :description
      t.datetime :due_date
      t.datetime :scheduled_at
      t.boolean :urgent
      t.text :notes

      t.timestamps
    end
  end
end
