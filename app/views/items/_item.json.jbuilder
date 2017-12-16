json.extract! item, :id, :title, :author, :subject, :description, :price, :isbn, :level, :image_url, :category, :colour, :created_at, :updated_at
json.url item_url(item, format: :json)
