json.extract! location, :id, :name, :address, :description, :email, :telephone, :created_at, :updated_at
json.url location_url(location, format: :json)
