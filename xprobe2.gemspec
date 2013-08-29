Gem::Specification.new do |s|
  s.name        = 'xprobe2'
  s.version     = '0.0.0'
  s.date        = '2013-08-29'
  s.summary     = "Xprobe2 Ruby Wrapper"
  s.description = "A wrapper and parser for using Xprobe2 in Ruby"
  s.authors     = ["Gabe Koss"]
  s.email       = 'gabe@gabekoss.com'
  s.files       = [
    "lib/xprobe2.rb", 
    "lib/xprobe2/base.rb",
    "lib/xprobe2/program.rb",
    "lib/xprobe2/task.rb"
    ]
  s.homepage    = "https://github.com/granolocks/xprobe2-rb"

  s.license       = 'MIT'

  s.add_dependency('rprogram')
end
