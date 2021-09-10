class Category < ApplicationRecord
  has_many :ideas
  validates :name, presence: true
  validates :name, uniqueness: true
end
