class CreateTodos < ActiveRecord::Migration
  def self.up
    create_table :todos do |t|
      t.integer :id
      t.string :name
      t.string :priority
      t.string :status
      t.integer :task_id

      t.timestamps
    end
  end

  def self.down
    drop_table :todos
  end
end
