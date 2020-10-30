# README

GET http://localhost:3000/parks?token=[YOURAPIKEY] will show first page of paginated parks(1-10) in the database

GET http://localhost:3000/parks?page=2&token=[YOURAPIKEY] will show second page of paginated parks(11-20)

GET http://localhost:3000/parks/1?token=[YOURAPIKEY] will show park with :id of "1"

GET http://localhost:3000/parks?name=south&token=[YOURAPIKEY] will show all parks with "south" in the name

GET http://localhost:3000/parks?location=dakota&token=[YOURAPIKEY] will show all parks "dakota" in the location

GET http://localhost:3000/parks?name=pro&location=north&token=[YOURAPIKEY] will show all parks with both "pro" in the name and "north" in the location

GET http://localhost:3000/random?token=[YOURAPIKEY] will show a random park

GET http://localhost:3000/all?token=[YOURAPIKEY] will show all parks

POST http://localhost:3000/parks?token=[YOURAPIKEY] will add a park as long as name, location, review, and rating are present.

PUT http://localhost:3000/parks/32?token=[YOURAPIKEY] will update the park with id "32"

DELETE http://localhost:3000/parks/32?token=[YOURAPIKEY] will delete the park with the id "32
