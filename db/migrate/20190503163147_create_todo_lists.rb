class CreateTodoLists < ActiveRecord::Migration[5.0]
  def change
    create_table :todo_lists do |t|
      t.string :content
      t.references :note, foreign_key: true

      t.timestamps
    end
  end
end
