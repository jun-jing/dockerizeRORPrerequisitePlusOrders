Order of starting a new docker on Chinese Server with ROR:
1. Create a new ROR
    1. locate at the root folder, where you are going to create an app here
    2. docker run -i -t --rm -v ${PWD}:/usr/src/app ruby:2.6 bash
    3. cd /usr/src/app
    4. gem install rails
    5. rails new myapp --skip-test --skip-bundle
    6. exit current docker container
        1. sudo chmod 666 myapp2/
    7. git clone https://github.com/berxtjkl/dockerizeRORPrerequisitePlusOrders.git
    8. then get into dockerizeRORPrerequisitePlusOrders folder
    9. put below files into your application folder by execute this [cp -r .env .gitignore docker-compose.yml docker-entrypoint.sh Dockerfile ../testDocker1/]
        1. .env/ (folder)
        2. .gitignore
        3. Dockerfile
        4. docker-compose.yml
        5. docker-entrypoint.sh
    10. sudo chmod 666 myapp2/
        1. because you move some files and folder in to your application
    11. Get into your application folder and execute [docker-compose build]
        1. make sure there is only one DockerizeROR running, because port is not dynamic
    12. docker-compose run web yarn install
    13. docker-compose run web bin/rails webpacker:install
    14. docker-compose run web bin/rails webpacker:install:react
    15. docker-compose up -d 
    16. now you can access ip:3000 to check whether it is okay


2. Using an existence ROR
    1. locate at the root folder, where you are going to copy an app here
    2. cp -r sample_app testDocker1 (here the name is just an example)
        1. copy app folder here, only 1 folder(now you can understand what will be put here.)
    3. git clone https://github.com/berxtjkl/dockerizeRORPrerequisitePlusOrders.git
    4. then get into dockerizeRORPrerequisitePlusOrders folder
    5. put below files into your application folder by execute this [cp -r .env .gitignore docker-compose.yml docker-entrypoint.sh Dockerfile ../testDocker1/]
        1. .env/ (folder)
        2. .gitignore
        3. Dockerfile
        4. docker-compose.yml
        5. docker-entrypoint.sh
    6. sudo chmod 666 myapp2/
    7. Get into your application folder and execute [docker-compose build]
        1. make sure there is only one DockerizeROR running, because port is not dynamic
    8. docker-compose run web yarn install
    9. docker-compose run web bundle install
        1. have no idea why I have to run bundle install here.....
    9. docker-compose run web bin/rails webpacker:install
        1. please make sure whether you are going to click y to overwrite some webpacker files
    10. docker-compose run web bin/rails webpacker:install:react
    11. docker-compose up -d 
    12. now you can access ip:3000 to check whether it is okay