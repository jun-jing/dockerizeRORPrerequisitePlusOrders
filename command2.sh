gem sources --remove https://rubygems.org/
gem sources -a https://gems.ruby-china.com
# fixed spec nomethod issue
# /usr/src/app/auctionGift/bin/spring:5:in `<top (required)>': 
#   undefined method `specs' for nil:NilClass (NoMethodError)
# https://stackoverflow.com/questions/59410402/webpacker-error-while-creating-ruby-on-rails-app
gem install yarn
# gem install bundler
gem install rails



rails new auctionGift --skip-test --skip-bundle