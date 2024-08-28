class CreateTodoItems < ActiveRecord::Migration[7.0]
  def change
    create_table :todo_items do |t|
      t.belongs_to :todo_list, null: false, foreign_key: true
      t.string :text
      t.boolean :completed

      t.timestamps
    end
  end
end
