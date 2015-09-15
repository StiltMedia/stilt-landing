class CreateCaseStudyWithDigitalMarketingsCategories < ActiveRecord::Migration
  def change
    create_table :case_study_with_digital_marketings_categories, :id => false do |t|
      t.references :case_study_with_digital_marketing, :category
    end

    add_index :case_study_with_digital_marketings_categories, [:case_study_with_digital_marketing_id, :category_id],
      name: "case_study_with_digital_marketings_categories_index",
      unique: true
  end
end
