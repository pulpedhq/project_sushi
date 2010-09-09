class CreateCritRequirements < ActiveRecord::Migration
  def self.up
    create_table :crit_requirements do |t|
      t.integer :id
      t.string :name
      t.string :status
      t.integer :crit_id

      t.timestamps
    end
  end

  def self.down
    drop_table :crit_requirements
  end
end
