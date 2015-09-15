class AddAttachmentFeaturedImageToCaseStudies < ActiveRecord::Migration
  def self.up
    change_table :case_studies do |t|
      t.attachment :featured_image
    end
  end

  def self.down
    remove_attachment :case_studies, :featured_image
  end
end
