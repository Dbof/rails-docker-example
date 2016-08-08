# rails-docker-example
A project using Docker to create an environment for development with Ruby on Rails.

To run the project, do the following steps:

# Docker
1. Install [Docker](https://docs.docker.com/engine/installation/)
2. Build the rails-docker container: `docker build -t rails-docker .`
3. Run `sh run_docker.sh`
4. Done!


After running the Docker container, you get an interactive shell where you can run typical Rails commands:

1. `rails new`
2. `rake`
3. `rails server -b 0.0.0.0` to start the built-in server. The web application will be available on http://localhost:3000/.

# Heroku
If you use Heroku, you usually can not push this repository to it, because it will not recognize the Rails app. You can push a subdirectory using `git subtree push --prefix src/*your_rails_app* heroku master`.

Also read: [Getting Started with Rails 5.x on Heroku](https://devcenter.heroku.com/articles/getting-started-with-rails5)
