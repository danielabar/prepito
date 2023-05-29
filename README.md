# prepito

Meal planning app wip...

Connect to Postgres db:

```bash
psql -h 127.0.0.1 -p 5436 -U prepito
# enter password from init.sql
\d table_name
```

## Model Brainstorming

```
bin/rails generate model meal name:string
bin/rails generate model PrepStep name:string description:text days_in_advance:integer meal:references:index

```

TODO:
* [add recipe_links as array column](https://stackoverflow.com/questions/32409820/add-an-array-column-in-rails)

## Original

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
