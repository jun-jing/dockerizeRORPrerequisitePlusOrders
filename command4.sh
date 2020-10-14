chmod -R 777 RORTestTeam
echo "check RORTestTeam is 777."
(cd RORTestTeam && docker-compose build)
(cd RORTestTeam && docker-compose run web yarn install)
(cd RORTestTeam && docker-compose run web bin/rails webpacker:install)
(cd RORTestTeam && docker-compose run web bin/rails webpacker:install:react)
(cd RORTestTeam && docker-compose up -d)