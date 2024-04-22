#!/bin/bash

asdf plugin add php
asdf install php latest:8.2

echo "zend_extension=opcache.so" > $(asdf where php)/conf.d/10-opcache.ini

pecl install apcu
echo "extension=apcu.so" > $(asdf where php)/conf.d/20-apcu.ini

pecl install xdebug
echo "zend_extension=xdebug.so" > $(asdf where php)/conf.d/30-xdebug.ini


