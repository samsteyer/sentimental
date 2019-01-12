#!/bin/bash
wget "http://ai.stanford.edu/~amaas/data/sentiment/aclImdb_v1.tar.gz" -O data/imdb.tar.gz
tar -xzf data/imdb.tar.gz -C data
find data/aclImdb/train/pos -name '*' -exec mv {} data/positive \;
find data/aclImdb/train/neg -name '*' -exec mv {} data/negative \;
find data/aclImdb/test/pos/ -name '*' -exec mv {} data/positive \;
find data/aclImdb/test/neg/ -name '*' -exec mv {} data/negative \;
rm -rf data/imdb.tar.gz
rm -rf data/aclImdb
