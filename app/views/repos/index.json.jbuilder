json.array!(@repos) do |repo|
  json.extract! repo, :id, :name, :language, :size, :fork, :user_id
  json.url repo_url(repo, format: :json)
end
