chmod -R 777 vintageMarket
echo "check vintageMarket is 777."
(cd vintageMarket && docker-compose build)
(cd vintageMarket && docker-compose run web yarn install)
(cd vintageMarket && docker-compose run web bin/rails webpacker:install)
(cd vintageMarket && docker-compose run web bin/rails webpacker:install:react)
(cd vintageMarket && docker-compose up -d)