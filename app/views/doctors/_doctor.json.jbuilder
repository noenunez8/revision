json.extract! doctor, :id, :first_name, :last_name, :speciality_id, :direction_id, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
