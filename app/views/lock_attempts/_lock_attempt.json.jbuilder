json.extract! lock_attempt, :id, :attempted, :errors, :created_at, :updated_at
json.url lock_attempt_url(lock_attempt, format: :json)
