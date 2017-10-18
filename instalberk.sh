#!/bin/bash

sudo apt-get -y update
sudo apt-get -y install build-essential ruby-dev git curl build-essential libxml2-dev libxslt-dev libssl-dev autoconf

if [ ! -e /opt/chef/bin/chef-solo ] ; then
    curl -L https://www.opscode.com/chef/install.sh | bash
fi
if [ ! -e /opt/chef/embedded/bin/berks ] ; then
   sudo /opt/chef/embedded/bin/gem install berkshelf --no-ri --no-rdoc
   sudo ln -s /opt/chef/embedded/bin/berks /usr/local/bin/berks
fi
