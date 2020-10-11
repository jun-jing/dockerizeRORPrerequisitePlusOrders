Order of starting a new docker on Chinese Server with ROR:
1. Create a new ROR(replace name in local, exec commadn on server)
    1. git clone https://github.com/berxtjkl/dockerizeRORPrerequisitePlusOrders.git to local.
    2. create a repo on git, and replace the "hmyse" with repo's "name" of all command.sh files in local and push it to git.
    3. go to server side's dockerizeRORPrerequisitePlusOrders/ folder and exec pull, then back to .. directory.
    4. execute dockerizeRORPrerequisitePlusOrders/command1.sh
    5. cd /usr/src/app/
    6. execute dockerizeRORPrerequisitePlusOrders/command2.sh and exit temp container
    7. execute dockerizeRORPrerequisitePlusOrders/command3.sh(move below files/folder to specific path)
        1. .env/ (folder)
        2. .gitignore
        3. Dockerfile
        4. docker-compose.yml
        5. docker-entrypoint.sh
    8. !!execute dockerizeRORPrerequisitePlusOrders/command4.sh(remember to set all relative ports increment+1 in docker-compose.yml depends on your server side that how many docker is running)
        1. make sure there is only one DockerizeROR running, because port is not dynamic
    9. now you can access ip:30xx to check whether it is okay
    10. git push new create app to repo, and you can clone it to everywhere.
        1. about the order of first time push to git
            1. git remote add origin https://github.com/berxtjkl/hmyse.git && \
            git add . && \
            git commit -m "first time upload." && \
            git push -u origin master && \
            git push
        2. when you clone it to your local maybe you need to run below commands:
            1. docker-compose run web yarn install  && \
            docker-compose run web yarn install --check-files && \
            docker-compose run web bin/rails webpacker:install

> PS额外信息:
>> 本地的bundle install很慢


2. Using an existence ROR
    1. locate at the root folder, where you are going to copy an app here
    2. cp -r source_app destination_app (here the name is just an example, youcan cp your source_app here or just use you source_app as destination_app, it is totally up to you.)
        1. copy app folder here, only 1 folder(now you can understand what will be put here.)
    3. git clone https://github.com/berxtjkl/dockerizeRORPrerequisitePlusOrders.git
    4. then get into dockerizeRORPrerequisitePlusOrders folder
    5. put below files into your application folder by execute this [cp -r .env .gitignore docker-compose.yml docker-entrypoint.sh Dockerfile ../destination_app/]
        1. .env/ (folder)
        2. .gitignore
        3. Dockerfile
        4. docker-compose.yml
        5. docker-entrypoint.sh
    6. sudo chmod 666 destination_app/ (optional)
    7. Get into your destination_app folder and execute [docker-compose build]
        1. make sure there is only one DockerizeROR running, because port is not dynamic
    8. docker-compose run web yarn install
    9. docker-compose run web bundle install
        1. have no idea why I have to run bundle install here.....
    10. docker-compose run web bin/rails webpacker:install
        1. please make sure whether you are going to click y to overwrite some webpacker files
    11. docker-compose run web bin/rails webpacker:install:react
    12. docker-compose up -d 
    13. now you can access ip:3000 to check whether it is okay