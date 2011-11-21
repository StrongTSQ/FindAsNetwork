class CreateOntologyMappings < ActiveRecord::Migration
  def self.up
    create_table :ontology_mappings do |t|
      t.integer :ontology_id
      t.integer :data_source_id
      t.string :ontology_name

      t.timestamps
    end
  end

  def self.down
    drop_table :ontology_mappings
  end
end
