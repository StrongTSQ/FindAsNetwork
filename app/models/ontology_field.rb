class OntologyField < ActiveRecord::Base
  belongs_to :ontology
  belongs_to :field
  
end
