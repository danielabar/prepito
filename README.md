# prepito

Meal planning app wip...

Connect to Postgres db:

```bash
psql -h 127.0.0.1 -p 5436 -U prepito
# enter password from init.sql
\d table_name
```

## Usage

`bin/rails c`:

```ruby
result = MealPlanner.call(cook_days: [6.days.from_now, 3.days.from_now])
result.schedule.display
# Sat. Jun. 17, 2023: Spice mixes
# Sat. Jun. 17, 2023: Teriyaki sauce
# Sun. Jun. 18, 2023: Toast sesame seeds
# Mon. Jun. 19, 2023: Press garlic & grate ginger
# Tue. Jun. 20, 2023: Slice carrots and parsnips
# Tue. Jun. 20, 2023: Slice green onion
# Wed. Jun. 21, 2023: Slice onion and dice celery
# Wed. Jun. 21, 2023: Cook Ground Beef Teriykai
# Thu. Jun. 22, 2023: Rough chop garlic
# Fri. Jun. 23, 2023: Roast potatoes
# Sat. Jun. 24, 2023: Cook Pot Roast and Potatoes
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
