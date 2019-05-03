class Note < ApplicationRecord
  has_many :todo_lists

  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title
end
