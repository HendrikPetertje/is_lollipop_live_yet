# change <YOUR_API_CODE_HERE> with an API code from https://www.pushbullet.com/account
curl -u <YOUR_API_CODE_HERE>: -X POST https://api.pushbullet.com/v2/pushes --header 'Content-Type: application/json' --data-binary '{"type": "note", "title": "Android Lollipop", "body": "Android Lollipop Could be live. Get to your nearest console now!"}'
