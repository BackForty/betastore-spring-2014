class Product < ActiveRecord::Base
  has_many :line_items
  has_many :orders, :through => :line_items

  validates :name, presence: true, uniqueness: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }

  def self.incredible
    where("name ILIKE '%incredible%'")
  end

  def self.cheap
    where("price < 50")
  end
end
