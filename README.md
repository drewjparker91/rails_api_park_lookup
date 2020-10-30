# _Epicodus Park Lookup API_

#### _Creating an API Using Rails for Epicodus, 10/29/2020

#### _Ruby Independent Project #4 (for Epicodus)_

#### By _**Drew Parker**_

## Description
Build a Parks Lookup API. Create an API for state and national parks. The API will list state and national parks.  Have endpoints for GET (all and by id), POST, PUT, and DELETE. Have a RANDOM endpoint that randomly return a park.  Model scopes to process parameters from API calls. Incorporate token authentication and pagination. Include excpetion handling, complete testing with request specs. Seed database using Faker gem.

## Specs
| Spec     | Behavior | Input    | Output   |
| -------- | -------- | -------- | -------- |
| 1 | API should GET first page of parks | "/parks" | Park List: First page of parks |
| 2 | API should GET second page of parks | "/parks?page=2" | Park List: Second page of parks |
| 3 | API should GET a single park | "/parks/1" | Park List: Park with :id of 1 |
| 4 | API should GET all parks with inputted name params | "/parks?name=south" | Park List: All parks with "south" in their name|
| 5 | API should GET all parks with inputted location params | "/parks?location=dakota" | Park List: All parks with "dakota" in their name |
| 6 | API should GET all parks with inputted name and location params | "/parks?name=south&location=oregon | Park List: All parks with "south" in their name and "Oregon" in their location  |
| 7 | API should GET a randomly generate park | "/random" | Park List: Random Park |
| 7 | API should GET all parks | "/all" | Park List: All Parks (unpaginated) |
| 7 |  |  |  |
| 7 | API should edit a park | PUT "parks/1" Edit Location: Oregon to Washington | "parks/1" location now Washington |
| 7 | API should DELETE a park | DELETE "/parks/1" | "/parks/1" has no content |
| 7 | API should add a park | POST "parks" with inputted park_params | Park List: shows new park with inputted park_params |


POST http://localhost:3000/parks?token=[YOURAPIKEY] will add a park as long as name, location, review, and rating are present.

DELETE http://localhost:3000/parks/32?token=[YOURAPIKEY] will delete the park with the id "32
