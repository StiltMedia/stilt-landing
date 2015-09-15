class AddAttachmentImageToPictureImages < ActiveRecord::Migration
  def self.up
    change_table :picture_images do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :picture_images, :image
  end
end
