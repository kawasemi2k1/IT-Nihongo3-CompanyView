class Company < ApplicationRecord
    has_many :companies_review, -> { order "created_at DESC"}
end
