chmod -R 777 randomName
echo "check randomName is 777."
(cd randomName && docker-compose build)
(cd randomName && docker-compose run web yarn install)
(cd randomName && docker-compose run web bin/rails webpacker:install)
(cd randomName && docker-compose run web bin/rails webpacker:install:react)
(cd randomName && docker-compose up -d)