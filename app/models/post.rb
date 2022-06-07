class Post < ApplicationRecord
  belongs_to :category, foreign_key: 'category_name', optional: true

  validates :title, presence: true
  validates :body, presence: true
end
