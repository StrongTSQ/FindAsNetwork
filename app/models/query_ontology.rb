class QueryOntology < ActiveRecord::Base
  belongs_to :query
  belongs_to :ontology
end
