class CreateDisplays < ActiveRecord::Migration[6.1]
  def change
    create_table :displays do |t|
      t.string :display_name
      t.string :introduction
      t.string :image
      t.integer :display_id
      t.integer :user_id

      t.timestamps
    end
  end
end
