json.extract! assignment, :id, :work_id, :location_id, :headline, :start_datetime, :due_datetime, :end_datetime, :status, :incharge_user_id, :worker_user_id, :created_at, :updated_at
json.url assignment_url(assignment, format: :json)
