# Compiling the Gem
# gem build aqueduct-mounted.gemspec
# gem install ./aqueduct-mounted-x.x.x.gem --no-ri --no-rdoc --local
#
# gem push aqueduct-mounted-x.x.x.gem
# gem list -r aqueduct-mounted
# gem install aqueduct-mounted

$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "aqueduct-mounted/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "aqueduct-mounted"
  s.version     = Aqueduct::Mounted::VERSION::STRING
  s.authors     = ["Remo Mueller"]
  s.email       = ["remosm@gmail.com"]
  s.homepage    = "https://github.com/remomueller"
  s.summary     = "Serve mounted directory files through Aqueduct"
  s.description = "Connects to mounted directory files using Aqueduct"
  s.license     = 'CC BY-NC-SA 3.0'

  s.files = Dir["{app,config,db,lib}/**/*"] + ["aqueduct-mounted.gemspec", "CHANGELOG.md", "LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails",     "~> 4.0.0"
  s.add_dependency "aqueduct",  "~> 0.2.0"

  s.add_development_dependency "sqlite3"
end
