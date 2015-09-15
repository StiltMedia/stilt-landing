class AddCaseStudyWithDigitalMarketingToApproach < ActiveRecord::Migration
  def change
    add_column :approaches, :case_study_with_digital_marketing_id, :integer
  end
end
