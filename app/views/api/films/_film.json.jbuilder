#json.extract! film, :id, :title, :description, :url_slug, :year, :related_film_ids, :average_rating
# json.data do
json.type 'films'
json.id film.id
json.attributes do 
  json.title film.title
  json.description film.description
  json.url_slug film.url_slug
  json.year film.year
  json.related_film_ids film.related_film_ids
  json.average_rating film.average_rating
end
# end



# "data": [{
#     "type": "articles",
#     "id": "1",
#     "attributes": {
#       "title": "JSON API paints my bikeshed!"
#     },