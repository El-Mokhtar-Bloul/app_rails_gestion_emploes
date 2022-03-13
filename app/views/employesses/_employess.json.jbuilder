json.extract! employess, :id, :nom, :prenom, :age, :salaire, :created_at, :updated_at
json.url employess_url(employess, format: :json)
