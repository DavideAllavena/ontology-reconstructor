#!/bin/bash

for f in $(ls  *.sparql)
do 
  query=$(cat $f)
  curl -L -G $1 --data-urlencode query="$query" -H "Content-Type:text/turtle" >> ex-post-ontology.ttl
done
