class RenameCompaniesId < ActiveRecord::Migration[6.0]
  def change
      rename_column :companies_reviews, :companies_id, :company_id
  end
end
