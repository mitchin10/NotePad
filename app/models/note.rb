class Note < ApplicationRecord
  belongs_to :note_category
  has_many :todo_lists, dependent: :destroy

  scope :asc_order, -> { order("created_at DESC") }

  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title
end
