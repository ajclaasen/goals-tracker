[![Build Passing](https://circleci.com/gh/rjclaasen/goals-tracker.svg?style=shield)](https://circleci.com/gh/rjclaasen/goals-tracker)
[![Maintainability](https://api.codeclimate.com/v1/badges/28d7062f1b1c9a7fefe7/maintainability)](https://codeclimate.com/github/rjclaasen/goals-tracker/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/28d7062f1b1c9a7fefe7/test_coverage)](https://codeclimate.com/github/rjclaasen/goals-tracker/test_coverage)

# Goals Tracker

Simple session-based goal tracker for TTRPG campaigns. 

## Dependencies

- Ruby 3.0.0
- Postgresql
- Node.js with Yarn

## Configuration

### Database
The default username for postgres is the username of your OS user. The default password is no password.

If the postgres configuration on your machine is different, see `config/database.yml`.

For the production environment, the username is `goals_tracker` and the password is fetched from the `GOALS_TRACKER_DATABASE_PASSWORD` environment variable.

## Database creation

Run the following to create the development and test databases and perform the migrations. The databases are ready for use afterwards.

```
$ rails db:create
$ rails db:migrate
```

## How to run the test suite

```
$ rspec
```

Code coverage output can be found at `coverage/index.html`.

## Deployment instructions

```
$ rails s
```

will run the server locally at [`localhost:3000`](localhost:3000).

Visit the list of all goals at [`localhost:3000/goals`](localhost:3000/goals).
