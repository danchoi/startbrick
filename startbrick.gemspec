$:.unshift File.join(File.dirname(__FILE__), 'lib')
require 'startbrick/version'

Gem::Specification.new do |s|
  s.name = "startbrick"
  s.description = "WEBrick wrapper"
  s.files         = `git ls-files`.split("\n")
  s.version = Startbrick::VERSION
  s.summary = s.description
  s.authors = ["Daniel Choi"]
  s.email = ["dhchoi@gmail.com"]
  s.homepage = "https://github.com/danchoi/startbrick"

end
