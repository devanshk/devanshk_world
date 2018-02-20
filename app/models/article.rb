class Article < ActiveRecord::Base
  belongs_to :category

  validates_presence_of :content
  validates_presence_of :title
  
  scope :active, where('active = ?', true)
  scope :alphabetical, order('title')
end
