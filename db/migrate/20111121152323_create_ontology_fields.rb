class CreateOntologyFields < ActiveRecord::Migration
  def self.up
    create_table :ontology_fields do |t|
      t.integer :ontology_id
      t.integer :field_id

      t.timestamps
    end
  end

  def self.down
    drop_table :ontology_fields
  end
end
