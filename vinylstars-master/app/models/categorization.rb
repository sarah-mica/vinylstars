class Categorization < ApplicationRecord
  belongs_to :source, polymorphic: true
  belongs_to :category
end
