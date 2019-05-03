class Note < ApplicationRecord
  has_many :todo_lists

  validates_presence_of :title
end
