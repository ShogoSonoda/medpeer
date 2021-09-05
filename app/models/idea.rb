class Idea < ApplicationRecord
  validates :category_id, presence: true
  validates :body, presence: true
end
