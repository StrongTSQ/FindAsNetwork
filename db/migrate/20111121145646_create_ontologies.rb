class CreateOntologies < ActiveRecord::Migration
  def self.up
    create_table :ontologies do |t|
      t.string :name
      t.text :desc

      t.timestamps
    end
  end

  def self.down
    drop_table :ontologies
  end
end
