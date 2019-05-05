class Note < ApplicationRecord
  has_many :todo_lists

  scope :asc_order, -> { order("created_at DESC") }

  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title
end
