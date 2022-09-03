# Movie Tracker

A Ruby on Rails application for creating and editing personal movie watchlists, complete with user authentication.

### Setup
- See .tool-versions for language version requirements.
- To clone the repository:
```
git clone https://github.com/pulibrary/movie-tracker-taylor.git
cd movie-tracker-taylor
```
- To install dependencies:
```
bundle install
yarn install
```

### Database Setup
- To create database:
```
bin/rails db:create
bin/rails db:migrate
```
- To reset database:
```
bin/rails db:reset
```

### Run app locally
- To start development server:
```
rails s
```
- Access the application at http://localhost:3000/.

### Run tests
- To run tests:
```
bundle exec rspec
```
