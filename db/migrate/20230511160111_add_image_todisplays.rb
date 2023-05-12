class AddImageTodisplays < ActiveRecord::Migration[6.1]
  def change
    add_column :displays, :image, :string
  end
end
