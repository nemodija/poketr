# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

~~~
rails new poketr -d mysql
cd poketr

rails g controller pokemons index
rails g model mega_effect name:string note:string
rails g model ability name:string note:string
rails g model type name:string
rails g model pokemon dex:integer name:string type:references attack:integer ability:references mega_effect:references
~~~

~~~
bundle install --path vendor/bundler
~~~

mysql

~~~
create database poketr_development;
~~~

~~~
bundle exec rake db:migrate RAILS_ENV=development
bundle exec rake db:seed RAILS_ENV=development

bundle exec rails s
~~~
