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

function install_libs {
  apt-get install -y zlib1g-dev
}

function install_ruby {
  echo "Installing ruby..."
  apt-get install -y ruby2.7 ruby2.7-dev
  gem install bundler
  echo "Done installing ruby."
}

update_apt_repositories
install_basic_packages
install_libs
install_ruby
