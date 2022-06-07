class Post < ApplicationRecord
  belongs_to :category, foreign_key: 'category_name', optional: true

  def tags_raw
    self.tags.join(",") unless self.tags.nil?
  end

  def tags_raw=(values)
    self.tags = []
    self.tags=values.split(",")
  end


  validates :title, presence: true
  validates :body, presence: true
end
