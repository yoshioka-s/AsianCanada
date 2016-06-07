json.array!(@jobs) do |job|
  json.extract! job, :id, :title, :description, :employer_id, :wage
  json.url job_url(job, format: :json)
end
