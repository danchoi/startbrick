# Startbrick

How much of your Rails dev time is wasted waiting for this: 

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

**Startbrick** is a thin wrapper around the `rails s` command that
automatically opens your Rails app in your default web browser when it's ready
to accept requests.

Install the gem with

    gem install startbrick

Startbrick works with Rails 3. It doesn't work with JRuby because it
uses `Kernel#fork`.

Start your Rails app with this command:

    startbrick

The browser should open to your app once the server is ready to accept
requests.

You can add any of the arguments that you can pass to the `rails s`
command.


## Optional .startbrick script

By default, Startbrick runs this shell command when the Rails server is
ready for requests:

    open "http://#{Host}:#{Port}"

You can override this by putting your own commands in a shell script in
a `.startbrick` file in your Rails root directory.

