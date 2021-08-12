class Todo < ApplicationRecord
  validates :titulo, presence: true
end