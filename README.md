# Is_lollipop_out_yet?
This is a small script to check if the new Android version is available on google's factory images site. Follow instructions below to get started
This script uses Ruby with the Nokogiri gem to copy the html from google to a variable (every 10 minutes) and look for the sentences `5.0`, `lollipop` and `Lollipop`. If it finds one of these it will play a spoken notification and send a push message via [pushbullet](https://www.pushbullet.com/)

# Setup instructions:

## Ruby installation
Install ruby with bundler to your Linux or Mac machine (no love for windows)
If you don't know how follow the steps below

### Mac
Mac comes pre-installed with (an old version of) Ruby. If you have not yet installed a better version of ruby let's do that now. (we're going to do this from the console, so open that)

Make sure you have xcode installed. Just do this from the app-store on your Mac

Install Homebrew visit [this site](http://brew.sh/) to get started

Install Rbenv on your local machine. For that follow instructions below:  

    $ brew update
    $ brew install rbenv ruby-build
    $ echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

Restart your console

    $ rbenv install 2.1.4
    $ rbenv global 2.1.4
    $ gem install bundler
    $ rbenv rehash

### Linux (Debian/Ubuntu based)
Install libraries used to run most ruby gems first:

    $ sudo apt-get udpate
    $ sudo apt-get dist-upgrade -y
    $ sudo apt-get install -y build-essential git-core python-software-properties openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev libgdbm-dev ncurses-dev automake libtool bison subversion pkg-config libffi-dev libcurl4-openssl-dev libpq-dev imagemagick ufw postgresql postgresql-contrib libpq-dev nodejs

Install rbenv

    $ git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
    $ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
    $ echo 'eval "$(rbenv init -)"' >> ~/.bashrc
    $ exec $SHELL -l
    $ rbenv -v # should return version number

Install ruby and bundler

    $ rbenv install 2.1.4
    $ rbenv global 2.1.4
    $ gem install bundler
    $ rbenv rehash

## Next clone and deploy this app to your local machine

open your favorite bash enabled terminal and run the code below:

    $ git clone git@github.com:PicoReclame/is_lollipop_live_yet.git
    cd is_lollipop_live_yet

Update the file `send_push.sh` with a pushbullet api-key from [https://www.pushbullet.com/account](https://www.pushbullet.com/account)

If you are on a mac change `aplay` to `afplay` in `google_script.rb` 

get back to your console again and bundle (install base gems to get screen scraping going) this project using the command below:

    $ bundle install

Then start the script using:

    $ bundle exec irb google_script.rb

You can stop the script using the key combo `[ctrl] + [C]`

# Disclaimer
Don't play with `sleep` in `google_script.rb` or the `while true` row as you could risk freezing your computer to a state where you will have to hit the reset or power button.
