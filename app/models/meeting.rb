class Meeting < ApplicationRecord
  enum :category, { real: 0, online: 1, hybrid: 2 }

  validates :title, presence: true
end
