class CreateToDoItems < ActiveRecord::Migration[5.2]
  def change
    create_table :to_do_items do |t|
      t.references :to_do_list, foreign_key: true
      t.string :title
      t.boolean :completed

      t.timestamps
    end
  end
end
