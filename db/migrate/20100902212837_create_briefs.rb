class CreateBriefs < ActiveRecord::Migration
  def self.up
    create_table :briefs do |t|
      t.integer :id
      t.string :name
      t.string :file_url
      t.integer :project_id

      t.timestamps
    end
  end

  def self.down
    drop_table :briefs
  end
end
