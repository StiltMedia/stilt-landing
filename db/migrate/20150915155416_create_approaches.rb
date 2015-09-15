class CreateApproaches < ActiveRecord::Migration
  def change
    create_table :approaches do |t|
      t.string :approach

      t.timestamps null: false
    end
  end
end
