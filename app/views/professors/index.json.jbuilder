json.array!(@professors) do |professor|
  json.extract! professor, :nome, :desc, :location, :id_departament, :helpfulness, :clarity, :easiness, :hotness
  json.url professor_url(professor, format: :json)
end
