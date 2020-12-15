gem sources --remove https://rubygems.org/
gem sources -a https://gems.ruby-china.com
# 指定特定版本, 尝试解决spec nomethoderror问题
gem install rails -v 6.0.3.4

# 暂时先comment这里, 因为还无法排除是下面的3行让自己成功安装解决了spec no method error问题, 
# 还是说之前是网速的问题(自己通过bundle install尝试了几次, 终于成功了)
# 总之, 下一次继续遇到spec no method error类似的问题的时候, 就从这里的俩问题来确认吧, 
# method 1: 网速, method 2: 安装yarn
# ----
# # 安装yarn, 在linux上
# curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
# echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
# # 需要点击Y
# apt update && apt install yarn
# ----
# 安装new rails app
rails new auctionGift --skip-test --skip-bundle