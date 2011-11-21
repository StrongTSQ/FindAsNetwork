class Query < ActiveRecord::Base
  has_many :query_ontologies
  has_many :ontologies, :through => :query_ontologies
end
