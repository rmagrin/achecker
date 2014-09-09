#!/usr/bin/env bash

function update_apt_repositories {
  echo "Adding new apt repositories..."
  apt-get update -y
  apt-get install -y python-software-properties
  # Ruby repository
  add-apt-repository -y ppa:brightbox/ruby-ng
  # Update apt
  apt-get update -y
  echo "Done adding new apt repositories."
}

function install_basic_packages {
  apt-get install -y vim curl git
}

function install_ruby {
  echo "Installing ruby..."
  apt-get install -y ruby2.1 ruby2.1-dev
  gem install bundler
  echo "Done installing ruby."
}

update_apt_repositories
install_basic_packages
install_ruby
