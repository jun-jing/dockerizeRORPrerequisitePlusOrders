chmod -R 777 randomName/
(cd randomName/ && docker-compose build)
(cd randomName/ && docker-compose run web yarn install)
(cd randomName/ && docker-compose run web bin/rails webpacker:install)
(cd randomName/ && docker-compose run web bin/rails webpacker:install:react)
(cd randomName/ && docker-compose up -d)