class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :title
      t.string :author
      t.string :subject
      t.text :description
      t.decimal :price
      t.string :isbn
      t.string :level
      t.string :image_url
      t.string :category
      t.string :colour

      t.timestamps
    end
  end
end
