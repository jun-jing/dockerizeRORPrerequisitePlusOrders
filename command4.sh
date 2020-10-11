chmod -R 777 hmyse
echo "check hmyse is 777."
(cd hmyse && docker-compose build)
(cd hmyse && docker-compose run web yarn install)
(cd hmyse && docker-compose run web bin/rails webpacker:install)
(cd hmyse && docker-compose run web bin/rails webpacker:install:react)
(cd hmyse && docker-compose up -d)