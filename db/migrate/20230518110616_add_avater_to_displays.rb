class AddAvaterToDisplays < ActiveRecord::Migration[6.1]
  def change
    add_column :displays, :avater, :string
  end
end
