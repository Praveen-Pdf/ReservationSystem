json.extract! timeslot, :id, :table_id, :name, :date, :start, :end, :status, :created_at, :updated_at
json.url timeslot_url(timeslot, format: :json)
