class CreateCritNotes < ActiveRecord::Migration
  def self.up
    create_table :crit_notes do |t|
      t.integer :id
      t.string :name
      t.integer :crit_id

      t.timestamps
    end
  end

  def self.down
    drop_table :crit_notes
  end
end
