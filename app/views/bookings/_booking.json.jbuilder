json.extract! booking, :id, :user_id, :table_id, :name, :email, :phone_no, :notes, :created_at, :updated_at
json.url booking_url(booking, format: :json)
