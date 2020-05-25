cd ../randomName/
docker-compose build
docker-compose run web yarn install
docker-compose run web bin/rails webpacker:install
docker-compose run web bin/rails webpacker:install:react
docker-compose up -d
