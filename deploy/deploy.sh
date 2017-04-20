#!/bin/bash

set -xe

if [ $TRAVIS_BRANCH == "gh-pages" ]; then

  deploy/set-ssh.sh
  deploy/docs-deploy.sh --yes

else
  echo "Nothing to deploy, since the current branch is not gh-pages."
fi

