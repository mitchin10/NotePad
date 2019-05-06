class AddNoteIdToNoteCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :note_categories, :note_id, :integer
    add_index :note_categories, :note_id
  end
end
