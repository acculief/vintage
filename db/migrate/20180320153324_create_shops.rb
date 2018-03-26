class CreateShops < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.string :shopname
      t.string :addr
      t.string :tel
      t.string :text
      t.string :image
      t.timestamps
    end
  end
end
