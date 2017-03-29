# Fandor Backend Coding Challenge


The challenge for [Fandor](https://www.fandor.com/) entailed creating a simple API app using Ruby on Rails with the following functionality:

* RESTful endpoints for retrieving a list of films or an individual film
* Support for allowing a user to rate a specific film
* Include average rating for a film as one of its attributes
* Requests and responses should follow the JSON API specification
* Provide tests where reasonable

----
## Instructions
1. Clone the repo.
2. Navigate into the folder.
3. Type ``bundle install`` into the console.
4. Type ``rails db:create`` into the console.
5. Type ``rails db:migrate`` into the console.
6. Type ``rails db:seed`` into the console.
7. Type ``rails server`` into the console and open up [local host](http://localhost:3000).
8. Remember to press Ctrl-C to stop the server.

----
## Routes

To view all films:
[/api/films](http://localhost:3000/api/films)

To view a film:
[/api/films/:id](http://localhost:3000/api/films/1)

To view the rating of a film:
[/api/ratings/:id](http://localhost:3000/api/ratings/1)

----
## To run the tests:
Type ``bundle exec rspec`` into the console. 

----
## Schema: