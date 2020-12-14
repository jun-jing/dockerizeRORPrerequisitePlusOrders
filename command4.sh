chmod -R 777 auctionGift
echo "check auctionGift is 777."
(cd auctionGift && docker-compose build)
(cd auctionGift && docker-compose run web yarn install)
(cd auctionGift && docker-compose run web bin/rails webpacker:install)
(cd auctionGift && docker-compose run web bin/rails webpacker:install:react)
(cd auctionGift && docker-compose up -d)