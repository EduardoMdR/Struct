class Song < ApplicationRecord

  validates :name, presence: true
  validates :album_id, presence: true

  belongs_to :album
end
