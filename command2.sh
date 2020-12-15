gem sources --remove https://rubygems.org/
gem sources -a https://gems.ruby-china.com
# 指定特定版本, 尝试解决spec nomethoderror问题
gem install rails -v 6.0.3.4
rails new auctionGift --skip-test --skip-bundle