class CreateCompaniesReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :companies_reviews do |t|
      t.integer :user_id
      t.integer :companies_id
      t.text :review

      t.timestamps
    end
  end
end
