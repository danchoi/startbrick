require 'webrick'

class Startbrick < WEBrick::HTTPServer
  def initialize
    puts "starting startbrick"
    super
  end

end

 
module Rack
  module Handler
    module Startbrick
      def self.run(app, options={})
        ::Startbrick.start_server(app, options)
      end
    end
  end
end

