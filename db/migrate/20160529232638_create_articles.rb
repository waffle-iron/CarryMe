class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.integer :uesr_id
      t.timestamps null: false
    end
  end
end
