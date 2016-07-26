json.extract! user, :id, :firsname, :lastname, :created_at, :updated_at
json.url user_url(user, format: :json)