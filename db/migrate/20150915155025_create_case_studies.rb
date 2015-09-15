class CreateCaseStudies < ActiveRecord::Migration
  def change
    create_table :case_studies do |t|
      t.string :name
      t.string :tagline
      t.text :description

      t.timestamps null: false
    end
  end
end
