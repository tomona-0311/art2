class RemoveImageFromDisplays < ActiveRecord::Migration[6.1]
  def change
    remove_column :displays, :image, :string
  end
end
