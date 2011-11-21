class FieldProperty < ActiveRecord::Base
  belongs_to :field
  belongs_to :property
end
