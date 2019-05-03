class TodoList < ApplicationRecord
  belongs_to :note

  validates_presence_of :content
end
