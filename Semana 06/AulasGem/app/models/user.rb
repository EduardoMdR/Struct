class User < ApplicationRecord
  authenticates_with_sorcery!

  has_one_attached :photo
end
