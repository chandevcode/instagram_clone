json.extract! body, :id, :user_id, :post_id, :created_at, :updated_at
json.url body_url(body, format: :json)
