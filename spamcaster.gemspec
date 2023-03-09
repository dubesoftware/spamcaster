
Gem::Specification.new do |s|
  s.name         = "spamcaster"
  s.version      = "1.0.2"
  s.author       = "Lloyd Dube"
  s.email        = "zebra05+spamcaster@gmail.com"
  s.homepage     = "https://github.com/dubesoftware/spamcaster"
  s.summary      = "A Sinatra-based web endpoint that accepts JSON payloads and fires off Slack notifications upon detection of spam."
  s.description  = File.read(File.join(File.dirname(__FILE__), 'README.md'))
  s.licenses     = ['MIT']

  s.files         = Dir["{bin,lib,spec}/**/*"] + %w(LICENSE.txt README.md)
  s.test_files    = Dir["spec/**/*"]
  s.executables   = [ 'spamcaster' ]

  s.required_ruby_version = '>=1.9'
end
