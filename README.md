# README

This README would normally document whatever steps are necessary to get the
application up and running.

#Dependencies

* Ruby version: ruby 2.6.6p146 (2020-03-31 revision 67876) [x86_64-darwin19]
* Rails version: Rails 6.0.3.5
* RubyGems
* Bundler: Bundler version 2.1.4

#Install dependencies with bundler: bundle install

# Custom gems
# authorization
gem 'pundit'
# fake seeds
gem 'faker'
# token to store the session
gem 'simple_token_authentication'

----------------------

#Database

* Database creation: rails db:create

* Database initialization: rails db:migrate

----------------------

#Deployment

* Deployment instructions

----------------------

#Steps followed to solve the exercise:

1 - Create new rails app with postgresql database

2 - Add user model

3 - Add order model

4 - Add models associations and validations

5 - Install Pundit for authorization and policies

6 - Create API base controller and config exceptions

7 - Add seeds to launch the app and test (enable)

8 - Add endpoint - "Obtener un listado de órdenes" - GET /api/v1/orders
    - Authorize all
    - Add route
    - Add index action

9 - Add endpoint - "Obtener una orden por ID" - GET /api/v1/orders/:id

10 - Add gem 'simple_token_authentication' to store session

11 -
