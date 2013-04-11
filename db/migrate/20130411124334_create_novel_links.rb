class CreateNovelLinks < ActiveRecord::Migration
  def change
    create_table :novel_links do |t|
      t.belongs_to :page, index: true
      t.integer :to_page_id
      t.string :name

      t.timestamps
    end
  end
end
