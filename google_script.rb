require 'nokogiri'
require 'open-uri'
require 'nikkou'
push_send = false
keep_loop = true

while keep_loop
  google_site = Nokogiri::HTML(open('https://developers.google.com/android/nexus/images'))
  if google_site.xpath("//td").text_includes('5.0').count > 2

    # send a pushbullet out notifying all workstations about the patch
    if push_send == false
      system("./send_push.sh")
      push_send = true
      keep_loop = false
      puts Time.now.strftime("Possible update at %H:%M")
    end
  else
    puts Time.now.strftime("No update at %H:%M")
  end
  sleep 120
end
