#!/bin/sh

cd ~

wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.2.2.tar.gz

sha1sum elasticsearch-5.2.2.tar.gz

tar -xzf elasticsearch-5.2.2.tar.gz

cd elasticsearch-5.2.2/