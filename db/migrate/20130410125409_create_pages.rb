class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :novel_id
      t.string :title
      t.text :body
      t.integer :status

      t.timestamps
    end
  end
end
