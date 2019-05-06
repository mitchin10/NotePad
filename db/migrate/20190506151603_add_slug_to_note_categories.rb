class AddSlugToNoteCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :note_categories, :slug, :string
    add_index :note_categories, :slug, unique: true
  end
end
