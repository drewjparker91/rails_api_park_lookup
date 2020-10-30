# _Epicodus Park Lookup API_

#### _Creating an API Using Rails for Epicodus, 10/29/2020

#### _Ruby Independent Project #4 (for Epicodus)_

#### By _**Drew Parker**_

## Description
Build a Parks Lookup API. Create an API for state and national parks. The API will list state and national parks.  Have endpoints for GET (all and by id), POST, PUT, and DELETE. Have a RANDOM endpoint that randomly return a park.  Model scopes to process parameters from API calls. Incorporate token authentication and pagination. Include excpetion handling, complete testing with request specs. Seed database using Faker gem.

## Specs
| Spec     | Behavior | Input    | Output   |
| -------- | -------- | -------- | -------- |
| 1 | API should show first page of parks | GET "/parks" | Park List: First page of parks |
| 2 | API should show second page of parks | GET "/parks?page=2" | Park List: Second page of parks |
| 3 | API should show a single park | GET "/parks/1" | Park List: Park with :id of 1 |
| 4 | API should show all parks with inputted name params | GET "/parks?name=south" | Park List: All parks with "south" in their name|
| 5 | API should show all parks with inputted location params | GET "/parks?location=dakota" | Park List: All parks with "dakota" in their name |
| 6 | API should show all parks with inputted name and location params | GET "/parks?name=south&location=oregon | Park List: All parks with "south" in their name and "Oregon" in their location  |
| 7 | API should show a randomly generate park | GET "/random" | Park List: Random Park |
| 7 | API should show all parks | GET "/all" | Park List: All Parks (unpaginated) |
| 7 | API should show 5 best rated parks | GET "/highest_rated" | Park List: Top 5 parks based on rating |
| 7 | API should show 5 worst rated parks | GET "/lowest_rated" | Park List: Bottom 5 parks based on rating |
| 7 | API should edit a park | PUT "parks/1" Edit Location: Oregon to Washington | "parks/1" location now Washington |
| 7 | API should delete a park | DELETE "/parks/1" | "/parks/1" has no content |
| 7 | API should add a park | POST "parks" with inputted park_params | Park List: shows new park with inputted park_params |


