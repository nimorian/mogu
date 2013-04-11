class CreateNovelPages < ActiveRecord::Migration
  def change
    create_table :novel_pages do |t|
      t.belongs_to :novel, index: true
      t.string :title
      t.text :body
      t.integer :status

      t.timestamps
    end
  end
end
