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

## Setup & Installation Requirements
### For ease of testing project, here is a token: 74c3fd0b56630a88daddf564f0fb6acf
* Install Postman.
* Go to "https://github.com/drewjparker91/rails_api_park_lookup" in your browser.
* Clone the repository.
* In your terminal, proceed to root of cloned project and run following commands in the following order: "bundle install", "rake db:create", "rake db:migrate", "rake db:test:prepare", "rake db:seed", "rails s".
* Next open the rails console by entering the command "rails c" in the terminal, then enter the command "ApiKey.create!", the console will provide a key that will follow "token:".
* Open Postmate and in the address bar type 'http://localhost:' follwed by the port that was generated when you entered the "rails s" command. following the port number you should be able to view the following GET routes:
  * http://localhost:[YourPortNumber]/parks?token=[YourGeneratedToken]
  * http://localhost:[YourPortNumber]/parks?page=2&token=[YourGeneratedToken]
  * http://localhost:[YourPortNumber]/parks/1?token=[YourGeneratedToken]
  * http://localhost:[YourPortNumber]/parks?name=[entersearchparameters]token=[YourGeneratedToken]
  * http://localhost:[YourPortNumber]/parks?location=[entersearchparameters]token=[YourGeneratedToken]
  * http://localhost:[YourPortNumber]/parks?name=[entersearchparameters]&location=[entersearchparameters]&token=[YourGeneratedToken]
  * http://localhost:[YourPortNumber]/random
  * http://localhost:[YourPortNumber]/all
  * http://localhost:[YourPortNumber]/highest_rated
  * http://localhost:[YourPortNumber]/lowest_rated
* ##### To add a park: In Postman, change the dropdown from GET to POST, enter the address "http://localhost:[YourPortNumber]/parks?token=[YourGeneratedToken]", and finally swith from the "Params" tab, to the "Body" Tab.
* In the Body field enter the following:
```
{
  "name": "",
  "location": "",
  "review": "",
  "rating": ""
}
```
* Please fill out all of the attributes before pressing send or the park will not be saved to the database.
* ##### To update an existing park: In Postman, change the dropdown from POST to PUT, and enter the address "http://localhost:[YourPortNumber]/parks/1?token=[YourGeneratedToken]"(this will update the park with id of 1, feel free to change the id number to any existing park id). Finally, make sure the body tab is still selected
* In the body field, enter the following:
```
{
  "name": "",
  "location": "",
  "review": "",
  "rating": ""
}
```
* Please fill out all of the attributes before pressing send or the park will not be updated  in the database.

* ##### To delete a park: In Postman, change the dropdown from PUT to DELETE and enter the address "http://localhost:[YourPortNumber]/parks/1?token=[YourGeneratedToken]"(this will delete the park with the id of 1, you may change this to any existing id number in the database). Press Send to delete the park from the database.

## Known Bugs
* _still finding a way to append "Park" onto the park names generated by Faker Gem_
* _all specs were passing prior to adding token authentication, unable to figure out solution to pass tests with token authentication in place_
## Technologies Used
* Ruby on Rails
* Ruby Gems: rails, pg, puma, bootstap, faker, will_paginate, factory_bot_rails, byebug, rspec_rails, launchy, pry, capybara, dotenv_rails, listen, spring, spring-watcher-listen, tzinfo-datae
* Markup
* Psql
* Postman
* Stack Overflow

### License

Copyright (c) 2020 **_Drew Parker_**

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.









