#!/bin/sh
#
# my chef-solo wrapper
# Author: wiredool <wrwrdool.com+git@gmal.com>
# Licence: New BSD license
#
# variable
#
CHEF_SOLO_COMMAND=chef-solo
CHEF_SOLO_CONFIG=solo.rb
CHEF_SOLO_JSON_ATTRIBS=chef.json
USER_ID=`id -u`
#
# check user
#
if [ ${USER_ID} != "0" ] ; then
  echo 'You need to be root to perform this command.'
  echo 'Usage: sudo sh '${0}
  exit 1
fi
#
# check chef command
#
which chef-solo > /dev/null 2>&1
if [ $? -ne 0 ] ; then
  echo 'chef-solo not found!'
  echo 'install now?(y/N)'
  read YES_NO
  if [ YES_NO = 'y' -o YES_NO = 'Y'] ; then
    #
    # install chef-solo
    # bash need sudo
    #
    curl -L https://www.opscode.com/chef/install.sh | bash
  else
   exit 1
  fi
  # TODO: check install result
fi
#
# run chef-solo
#
${CHEF_SOLO_COMMAND} -c ${CHEF_SOLO_CONFIG} -j ${CHEF_SOLO_JSON_ATTRIBS}
