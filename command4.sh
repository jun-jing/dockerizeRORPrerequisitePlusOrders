chmod -R 777 rubyFourKingWebsite
echo "check rubyFourKingWebsite is 777."
(cd rubyFourKingWebsite && docker-compose build)
(cd rubyFourKingWebsite && docker-compose run web yarn install)
(cd rubyFourKingWebsite && docker-compose run web bin/rails webpacker:install)
(cd rubyFourKingWebsite && docker-compose run web bin/rails webpacker:install:react)
(cd rubyFourKingWebsite && docker-compose up -d)