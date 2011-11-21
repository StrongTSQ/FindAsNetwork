class Ontology < ActiveRecord::Base
  has_many :ontology_fields
  has_many :fields, :through  => :ontology_fields
  belongs_to :query
end
