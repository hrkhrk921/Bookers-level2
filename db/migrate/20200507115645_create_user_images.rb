class CreateUserImages < ActiveRecord::Migration[5.2]
  def change
    create_table :user_images do |t|
      t.text :introduction
      t.string :profile_image_id
      t.integer :user_id_id

      t.timestamps
    end
  end
end
