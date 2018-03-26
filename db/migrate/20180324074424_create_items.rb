class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :itemname
      t.string :size
      t.string :itemtext
      t.string :itemimage
      t.references :shop, foreign_key: true

      t.timestamps
    end
  end
end
