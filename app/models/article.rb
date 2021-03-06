class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5 }
  has_one :admin
  has_many :comments
end
