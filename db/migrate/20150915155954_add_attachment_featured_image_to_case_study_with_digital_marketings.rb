class AddAttachmentFeaturedImageToCaseStudyWithDigitalMarketings < ActiveRecord::Migration
  def self.up
    change_table :case_study_with_digital_marketings do |t|
      t.attachment :featured_image
    end
  end

  def self.down
    remove_attachment :case_study_with_digital_marketings, :featured_image
  end
end
