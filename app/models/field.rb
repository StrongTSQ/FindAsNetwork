class Field < ActiveRecord::Base
  has_many :field_properties
  has_many :properties, :through => :field_properties
  belongs_to :ontology
end
