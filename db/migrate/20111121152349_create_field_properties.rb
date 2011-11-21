class CreateFieldProperties < ActiveRecord::Migration
  def self.up
    create_table :field_properties do |t|
      t.integer :field_id
      t.integer :property_id

      t.timestamps
    end
  end

  def self.down
    drop_table :field_properties
  end
end
