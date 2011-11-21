class CreateFieldMappings < ActiveRecord::Migration
  def self.up
    create_table :field_mappings do |t|
      t.integer :field_id
      t.integer :data_source_id
      t.string :field_name

      t.timestamps
    end
  end

  def self.down
    drop_table :field_mappings
  end
end
