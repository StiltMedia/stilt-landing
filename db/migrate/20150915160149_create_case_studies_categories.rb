class CreateCaseStudiesCategories < ActiveRecord::Migration
  def change
    create_table :case_studies_categories, :id => false do |t|
      t.references :case_study, :category
    end

    add_index :case_studies_categories, [:case_study_id, :category_id],
      name: "case_studies_categories_index",
      unique: true
  end
end
