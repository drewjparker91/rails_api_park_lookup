# README

GET http://localhost:3000/parks?token=74c3fd0b56630a88daddf564f0fb6acf will show first page of paginated parks(10) in the database

GET http://localhost:3000/parks?page=2&token=74c3fd0b56630a88daddf564f0fb6acf

GET http://localhost:3000/parks/1 will show park with :id of "1"

GET http://localhost:3000/parks&name=south will show all parks with "south" in the name

GET http://localhost:3000/parks&location=dakota will show all parks "dakota" in the location

GET http://localhost:3000/parks&name=pro&location=north will show all parks with both "pro" in the name and "north" in the location

GET http://localhost:3000/parks?page=2 will show the second page of results from the pagination

GET http://localhost:3000/random will generate a random park

POST http://localhost:3000/parks will add a park as long as name, location, review, and rating are present.

PUT http://localhost:3000/parks/32 will update the park with id "32"

DELETE http://localhost:3000/parks/32 will delete the park with the id "32

token = 74c3fd0b56630a88daddf564f0fb6acf
