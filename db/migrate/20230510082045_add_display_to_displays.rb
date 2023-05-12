class AddDisplayToDisplays < ActiveRecord::Migration[6.1]
  def change
    add_column :displays, :display_name, :string
    add_column :displays, :introduction, :string
    add_column :displays, :image, :string
  end
end
