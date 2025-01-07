#!/usr/bin/env bash
set -o errexit

# Cài đặt gems và precompile assets
bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean

# Chạy migrate
bundle exec rails db:migrate

# Tạo user đầu tiên nếu chưa tồn tại
bundle exec rails runner "User.create!(email_address: 'nqh2k3@gmail.com', password: 'nqh2k3@1', password_confirmation: 'nqh2k3@1') unless User.exists?(email_address: 'nqh2k3@gmail.com')"
