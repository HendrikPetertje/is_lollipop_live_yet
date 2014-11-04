require 'nokogiri'
require 'open-uri'
require 'nikkou'
push_send = false
while true
  google_site = Nokogiri::HTML(open('https://developers.google.com/android/nexus/images'))
  if google_site.search('body').text_includes('5.0').any? || google_site.search('body').text_includes('Lollipop').any? || google_site.search('body').text_includes('lollipop').any?

    # Play a fancy sound (change to aplay to afplay if you are using mac)
    system("aplay google-alert.wav")

    # send a pushbullet out notifying all workstations about the patch
    if push_send == false
      system("./send_push.sh")
      push_send = true
    end
  else
    puts Time.now.strftime("No update at %H:%M")
  end
  sleep 600
end
