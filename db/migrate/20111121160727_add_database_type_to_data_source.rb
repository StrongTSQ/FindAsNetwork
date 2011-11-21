class AddDatabaseTypeToDataSource < ActiveRecord::Migration
  def self.up
    add_column :data_sources, :database_type, :string
  end

  def self.down
    remove_column :data_sources, :database_type
  end
end
