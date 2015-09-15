class AddSlugToCaseStudyWithDigitalMarketings < ActiveRecord::Migration
  def change
    add_column :case_study_with_digital_marketings, :slug, :string
    add_index :case_study_with_digital_marketings, :slug
  end
end
