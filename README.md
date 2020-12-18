# README

## Api-Challenge

Project to calculate the installment of a micro-loan that a client wants to request and must pay monthly / biweekly

The user enters the requested data. And he will return the calculation of the couta to pay for the requested loan. 
In addition, an email is sent to an authorized user of the client's request.

### Project Details:

* Ruby version: 2.5.0
* Rails version: 5.0.1

* Verify that the cors are enabled. In config/initializers/cors. Uncomment the lines of the cors.
* And uncomment  "gem 'rack-cors'"
* For purposes of running locally, change in the cors file. The "origin" to the local path of the project. 
  For example: http: // localhost: 3000

* And then, Run
> bundle install

* Database
- PostgreSQL

* Database initialization
> rake db:create rake db:migrate

* Run Server
> rvm list
> rvm use 2.5.0@2.5.0
> rails server
