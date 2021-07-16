json.extract! restaurant, :id, :name, :email, :phone_no, :address, :start_time, :end_time, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
