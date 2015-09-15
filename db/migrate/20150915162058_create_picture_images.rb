class CreatePictureImages < ActiveRecord::Migration
  def change
    create_table :picture_images do |t|

      t.timestamps null: false
    end
  end
end
