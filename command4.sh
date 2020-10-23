chmod -R 777 bootTemplateWithROR-vintageMarket
echo "check bootTemplateWithROR-vintageMarket is 777."
(cd bootTemplateWithROR-vintageMarket && docker-compose build)
(cd bootTemplateWithROR-vintageMarket && docker-compose run web yarn install)
(cd bootTemplateWithROR-vintageMarket && docker-compose run web bin/rails webpacker:install)
(cd bootTemplateWithROR-vintageMarket && docker-compose run web bin/rails webpacker:install:react)
(cd bootTemplateWithROR-vintageMarket && docker-compose up -d)