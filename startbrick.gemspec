$:.unshift File.join(File.dirname(__FILE__), 'lib')
require 'startbrick/version'

Gem::Specification.new do |s|
  s.name = "startbrick"
  s.description = "rails s wrapper"
  s.version = Startbrick::VERSION
  s.summary = s.description
  s.authors = ["Daniel Choi"]
  s.email = ["dhchoi@gmail.com"]
  s.homepage = "https://github.com/danchoi/startbrick"

  s.files         = `git ls-files`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }

end
