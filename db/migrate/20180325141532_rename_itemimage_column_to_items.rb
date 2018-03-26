class RenameItemimageColumnToItems < ActiveRecord::Migration[5.1]
  def change
    rename_column :items, :itemimage,:image
  end
end
