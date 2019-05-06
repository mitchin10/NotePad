class NoteCategory < ApplicationRecord
  has_many :notes

  extend FriendlyId
  friendly_id :name, use: :slugged

  validates_presence_of :name
end
