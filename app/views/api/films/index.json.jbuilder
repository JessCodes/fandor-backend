json.array! @films do |film|
  json.partial! "api/films/film", film: film
end