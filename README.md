# prepito

Meal planning app wip...

Start Postgres:

```
docker-compose up
```

Connect to Postgres db:

```bash
psql -h 127.0.0.1 -p 5436 -U prepito
# enter password from init.sql
\d table_name
```

Reseed:

```
bin/rails db:seed:replant
```

## Usage

`bin/rails c`:

```ruby
# Pass in array of dates, not datetime!
result = MealPlanner.call(cook_days: [6.days.from_now.to_date, 3.days.from_now.to_date])
result.schedule.display
# Mon. Jun. 19, 2023:
#         Smash garlic
#         Slice peppers
#         Slice onion and mushrooms
#         Steam rice
#         Slice green onion and press garlic
# Tue. Jun. 20, 2023:
#         Spice mixes
# Wed. Jun. 21, 2023:
#         Wash fresh thyme
#         Portion butter
#         Cook Rib Steak and Sautéed Veg
# Thu. Jun. 22, 2023:
#         Drain and rinse black beans
# Fri. Jun. 23, 2023:
#         Spice mixes
# Sat. Jun. 24, 2023:
#         Cook Beef Burrito Casserole
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
