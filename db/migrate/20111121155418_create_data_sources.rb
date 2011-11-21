class CreateDataSources < ActiveRecord::Migration
  def self.up
    create_table :data_sources do |t|
      t.string :name
      t.string :hostname
      t.string :ip
      t.string :username
      t.string :password
      t.text :desc

      t.timestamps
    end
  end

  def self.down
    drop_table :data_sources
  end
end
