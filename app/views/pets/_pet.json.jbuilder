json.extract! pet, :id, :name, :species, :year_of_birth, :good_with_kids, :created_at, :updated_at
json.url pet_url(pet, format: :json)
