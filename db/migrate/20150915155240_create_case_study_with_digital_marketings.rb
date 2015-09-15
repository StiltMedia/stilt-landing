class CreateCaseStudyWithDigitalMarketings < ActiveRecord::Migration
  def change
    create_table :case_study_with_digital_marketings do |t|
      t.string :name
      t.string :tagline
      t.text :description
      t.text :conclusion

      t.timestamps null: false
    end
  end
end
