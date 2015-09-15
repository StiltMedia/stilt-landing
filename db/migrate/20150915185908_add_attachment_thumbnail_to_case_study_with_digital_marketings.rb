class AddAttachmentThumbnailToCaseStudyWithDigitalMarketings < ActiveRecord::Migration
  def self.up
    change_table :case_study_with_digital_marketings do |t|
      t.attachment :thumbnail
    end
  end

  def self.down
    remove_attachment :case_study_with_digital_marketings, :thumbnail
  end
end
