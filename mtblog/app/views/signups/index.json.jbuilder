json.array!(@signups) do |signup|
  json.extract! signup, :id, :FisrtName, :LastName, :Email
  json.url signup_url(signup, format: :json)
end
