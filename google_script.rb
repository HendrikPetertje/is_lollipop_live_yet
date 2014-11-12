require 'nokogiri'
require 'open-uri'
require 'nikkou'
push_send = false
while true
  google_site = Nokogiri::HTML(open('https://developers.google.com/android/nexus/images'))
  if google_site.xpath("//td").text_includes('5.0').count > 2

    # send a pushbullet out notifying all workstations about the patch
    if push_send == false
      system("./send_push.sh")
      push_send = true
    end
  else
    puts Time.now.strftime("No update at %H:%M")
  end
  sleep 120
end
