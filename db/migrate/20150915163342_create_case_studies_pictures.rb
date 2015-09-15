class CreateCaseStudiesPictures < ActiveRecord::Migration
  def change
    create_table :case_studies_pictures, :id => false do |t|
      t.references :case_study, :picture
    end

    add_index :case_studies_pictures, [:case_study_id, :picture_id],
      name: "case_studies_pictures_index",
      unique: true
  end
end
