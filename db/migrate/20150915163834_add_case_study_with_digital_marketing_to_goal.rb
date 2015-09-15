class AddCaseStudyWithDigitalMarketingToGoal < ActiveRecord::Migration
  def change
    add_column :goals, :case_study_with_digital_marketing_id, :integer
  end
end
