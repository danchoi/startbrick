# Startbrick

How much of your Rails dev time is utterly wasted waiting for this: 

    $ rails s
    => Booting WEBrick
    => Rails 3.1.1 application starting in development on http://0.0.0.0:3000
    => Call with -d to detach
    => Ctrl-C to shutdown server

to turn into this:

    $ rails s
    => Booting WEBrick
    => Rails 3.1.1 application starting in development on http://0.0.0.0:3000
    => Call with -d to detach
    => Ctrl-C to shutdown server
    [2011-11-01 13:22:01] INFO  WEBrick 1.3.1
    [2011-11-01 13:22:01] INFO  ruby 1.9.2 (2011-07-09) [i686-linux]
    [2011-11-01 13:22:01] INFO  WEBrick::HTTPServer#start: pid=4012 port=3000

just so you can manually load the Rails app in your web browser?

**Startbrick** is a thin wrapper gem around Rack::Handler::WEBrick that
automatically opens your Rails app in your default web browser when it's ready
to accept requests.

Install the gem with

    gem install startbrick

Startbrick works with Rails 3.

To use startbrick, puts this line in your Gemfile

    gem 'startbrick'

and start your Rails app with this command:

    startbrick

You can add any of the arguments that you can pass to the `rails s`
command.

## Optional .startbrick script

By default, Startbrick runs this shell command when WEBrick is ready for
requests:

    open "http://#{BindAddress}:#{Port}"

You can override this by putting your own shell script in a `.startbrick` file
in your Rails root directory. 



