class AddNoteCategoryIdToNotes < ActiveRecord::Migration[5.0]
  def change
    add_column :notes, :note_category_id, :integer
    add_index :notes, :note_category_id
  end
end
