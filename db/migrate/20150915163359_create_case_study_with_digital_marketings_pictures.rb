class CreateCaseStudyWithDigitalMarketingsPictures < ActiveRecord::Migration
  def change
    create_table :case_study_with_digital_marketings_pictures, :id => false do |t|
      t.references :case_study_with_digital_marketing, :picture
    end

    add_index :case_study_with_digital_marketings_pictures, [:case_study_with_digital_marketing_id, :picture_id],
      name: "case_study_with_digital_marketings_pictures_index",
      unique: true
  end
end
