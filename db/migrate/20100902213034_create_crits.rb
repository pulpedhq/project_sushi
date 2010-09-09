class CreateCrits < ActiveRecord::Migration
  def self.up
    create_table :crits do |t|
      t.integer :id
      t.string :name
      t.integer :project_id

      t.timestamps
    end
  end

  def self.down
    drop_table :crits
  end
end
