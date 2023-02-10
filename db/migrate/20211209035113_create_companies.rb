class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :programming_langue
      t.string :vacancy
      t.string :location
      t.string :website_link
      t.string :description

      t.timestamps
    end
  end
end
