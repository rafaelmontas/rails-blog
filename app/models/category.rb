class Category < ApplicationRecord
  self.primary_key = 'name'
  has_many :posts, primary_key: 'name', foreign_key: 'category_name'
end
