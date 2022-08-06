#! bin/bash 

# create two categories
echo "Input category1 name: " 
read categoryName
curl -X 'POST' \
  'https://ams.saintrivers.tech/api/v1/articles/categories' \
  -H 'accept: */*' \
  -H 'Content-Type: application/json' \
  -d '{
  "name": "'$categoryName'" 
}'

echo

echo "Input category2 name: " 
read categoryName2
curl -X 'POST' \
  'https://ams.saintrivers.tech/api/v1/articles/categories' \
  -H 'accept: */*' \
  -H 'Content-Type: application/json' \
  -d '{
  "name": "'$categoryName2'" 
}'

echo 

# create an article 

#! bin/bash 

echo "Input article title: "
read title
echo "Input artitcle body: "
read body
echo "Input artitcle author: "
read aut

now=$(date "+%Y-%m-%dT%H:%M:%S")

curl -X 'POST' \
  'https://ams.saintrivers.tech/api/v1/articles' \
  -H 'accept: */*' \
  -H 'Content-Type: application/json' \
  -d '{
  "content": {
    "title": "'$title'",
    "body": "'$body'"
  },
  "createdAt": "'$now'",
  "author": "'$aut'",
  "categories": [
    0
  ]
}'

echo 

# comment on article 
