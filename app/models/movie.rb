class Movie < ApplicationRecord
  has_many :lists, :through => :bookmarks

  validates :title, :genre, presence: true
end
