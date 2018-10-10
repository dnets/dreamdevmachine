#!/bin/bash
YUM_CMD=$(which yum 2> /dev/null)
APT_GET_CMD=$(which apt-get 2> /dev/null)

pkg_install() {
  if [[ ! -z $YUM_CMD ]]; then
      sudo yum -y install $1
  elif [[ ! -z $APT_GET_CMD ]]; then
      sudo apt-get -y install $1
  else
      echo "error can't install package $PACKAGE"
      exit 1;
  fi
}