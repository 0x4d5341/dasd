movie=Dr.Strange

if [[ $(curl https://api.qfxcinemas.com/api/public/banners | jq -r '.data[] | select (.id==7721) | .buyTicket') =~ .*"true".* ]];
then
	curl -X POST --data-urlencode "payload={\"channel\": \"#test\", \"username\": \"000\", \"text\": \"This is posted to #test and $movie ayo\", \"icon_emoji\": \":ghost:\"}" https://hooks.slack.com/services/00/000/000000
	echo 'yes'
else
	echo 'not available yet'
fi
