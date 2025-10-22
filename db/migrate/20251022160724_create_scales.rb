class CreateScales < ActiveRecord::Migration[8.0]
  def change
    create_table :scales do |t|
      t.string :title
      t.text :description
      t.string :category

      t.timestamps
    end
  end
end
