1. Clone this repository
2. Set up the database
  $ docker-compose run web rake db:create db:setup
3. Start the app
  $ docker-compose up

4. To access the rails console
  $ docker-compose run web rails console
