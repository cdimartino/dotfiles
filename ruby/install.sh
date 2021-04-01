#!/bin/sh

if test ! $(which asdf)
then
  echo "  Installing asdf for you."
  brew install asdf > /tmp/asdf-install.log
fi

if test ! $(asdf plugin list | grep ruby)
then
  echo "  Installing asdf-ruby for you."
  asdf plugin add ruby > /tmp/asdf-ruby-install.log
fi

if test ! $(which ruby-install)
then
  echo "  Installing ruby-install for you."
  brew install ruby-install > /tmp/ruby-install-install.log
fi
