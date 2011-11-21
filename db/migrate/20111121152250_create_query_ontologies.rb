class CreateQueryOntologies < ActiveRecord::Migration
  def self.up
    create_table :query_ontologies do |t|
      t.integer :query_id
      t.integer :ontology_id

      t.timestamps
    end
  end

  def self.down
    drop_table :query_ontologies
  end
end
