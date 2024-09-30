#!/bin/sh

application="h"
domain="github"


# # Create Project Directory

# function create_project_directory(){
#     mkdir $lowercase_app_name
# }

echo "  ___  ____  _  _  __  ____  __  __  _  _ "
echo " / __)(_  _)( )/ )/. |(  _ \(  )(  )( \( )"
echo "( (_-.  )(   )  ((_  _))   / )(__)(  )  ( "
echo " \___/ (__) (_)\_) (_)(_)\_)(______)(_)\_)"

echo ""
echo -e 'Enter your application name: \c'
read application
echo -e 'Enter your project domain: \c'
read domain
directory_name=com.$application.$domain
# create_project_directory()


