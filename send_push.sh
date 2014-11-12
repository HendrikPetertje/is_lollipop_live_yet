# change <YOUR_API_CODE_HERE> with an API code from https://www.pushbullet.com/account
curl -u <YOUR_API_CODE_HERE>: -X POST https://api.pushbullet.com/v2/pushes --header 'Content-Type: application/json' --data-binary '{"type": "note", "channel_tag": "<your_channel_here>", "title": "Android Lollipop", "body": "New text with content 5.0 is posted to the Lollipop Factory images page"}'
