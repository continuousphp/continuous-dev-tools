#!/bin/sh
if ! [ -x "$(command -v sam)" ]; then
  echo 'Info: aws-sam-cli is not yet installed.' >&2
else
  echo Info: aws-sam-cli version `sam --version` is installed. Uninstalling  >&2 && \
  pip3 uninstall  aws-sam-cli -y && \
  sudo rm -f `which sam`
fi

pip3 install --user  aws-sam-cli==1.20.0 && \

if ! [ -x "$(command -v sam)" ]; then
  echo 'Error: aws-sam-cli did not update.' >&2
  exit 1
else
  echo installed sam `sam --version`
fi
