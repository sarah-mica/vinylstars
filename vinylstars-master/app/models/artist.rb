class Artist < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :albums
end
