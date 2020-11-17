# TheTraveler-Server
- Ruby version > 2.5.0

## Description

Server của TheTraveler

## Installation

- git clone https://github.com/TheTraveler2020/thetraveler-server.git
- bundle install
- rails db:create
- bundle exec ridgepole -c cofig/database.yml -E development --apply -f db/schemas/Schemafile
- bundle exec ridgepole -c cofig/database.yml -E test --apply -f db/schemas/Schemafile
- rails db:migrate
- rails s

enjoy!
