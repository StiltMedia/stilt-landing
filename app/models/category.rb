class Category < ActiveRecord::Base
  has_and_belongs_to_many :case_study_with_digital_marketings
  has_and_belongs_to_many :case_studies
end
