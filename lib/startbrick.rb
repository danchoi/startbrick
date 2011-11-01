require 'rack'
require 'rack/handler/webrick'
 
module Rack
  module Handler
    SCRIPT_FILE = '.startbrick'
    
    class Startbrick < Rack::Handler::WEBrick
      def self.run(app, options={})

        options[:BindAddress] = options.delete(:Host) if options[:Host]

        options[:StartCallback] = if ::File.size?(SCRIPT_FILE)
          script = ::File.read(SCRIPT_FILE)
          puts "Loading #{SCRIPT_FILE} script:\n\n#{script.gsub(/^/, '  ')}"
          Proc.new {
            puts "Executing #{SCRIPT_FILE}"
            fork { `bash #{SCRIPT_FILE}` }
          }
        else
          Proc.new {
            url = "http://#{options[:BindAddress]}:#{options[:Port]}"
            cmd = "open #{url}"
            puts "Running '#{cmd}'"
            fork { `#{cmd}` }
          }
          
        end
        @server = ::WEBrick::HTTPServer.new(options)
        @server.mount "/", Rack::Handler::WEBrick, app
        yield @server  if block_given?
        @server.start
      end

    end
  end
end

