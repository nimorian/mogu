class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :page_id
      t.integer :to_page_id
      t.string :name

      t.timestamps
    end
  end
end
