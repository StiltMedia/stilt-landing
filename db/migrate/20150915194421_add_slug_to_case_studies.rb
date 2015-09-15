class AddSlugToCaseStudies < ActiveRecord::Migration
  def change
    add_column :case_studies, :slug, :string
    add_index :case_studies, :slug
  end
end
