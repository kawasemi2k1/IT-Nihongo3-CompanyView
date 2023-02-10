json.extract! companies_review, :id, :user_id, :companies_id, :review, :created_at, :updated_at
json.url companies_review_url(companies_review, format: :json)
