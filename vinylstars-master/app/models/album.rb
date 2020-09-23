require 'csv'

class Album < ApplicationRecord
  mount_uploader :thumbnail, ImageUploader
  has_many :categorizations, as: :source
  has_many :categories, through: :categorizations
  accepts_nested_attributes_for :categories
  belongs_to :artist
  belongs_to :condition

  validates :title, :artist, presence: true

  def artist_name
    self.artist.try(:name) || 'N/A'
  end

  def condition_name
    self.condition.try(:name) || 'N/A'
  end

  def category_name
    self.categories.first.try(:title) || 'N/A'
  end

  def self.to_csv
    attributes = %w{id title artist_name category_name condition_name year thumbnail created_at updated_at}
    CSV.generate(headers: true) do |csv|
      csv << attributes
      all.each do |user|
        csv << attributes.map{ |attr| user.send(attr) }
      end
    end
  end

end
