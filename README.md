Order of start a new docker ROR:
1. Create a new ROR
    0. locate at the root folder, where you are going to create an app here
    1. docker run -i -t --rm -v ${PWD}:/usr/src/app ruby:2.6 bash
    2. cd /usr/src/app
    3. gem install rails
    4. rails new myapp --skip-test --skip-bundle
        1. sudo chmod 666 myapp2/
    5. docker-compose run web bin/rails webpacker:install
    6. docker-compose run web bin/rails webpacker:install:react


2. Using an existence ROR
    0. locate at the root folder, where you are going to copy an app here
    1. copy app folder here, only 1 folder(now you can understand what will be put here.)
    2. 