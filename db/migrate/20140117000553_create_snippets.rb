class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.string :title
      t.text :description
      t.string :language
      t.text :code
      t.boolean :private
      t.integer :user_id

      t.timestamps
    end
  end
end
