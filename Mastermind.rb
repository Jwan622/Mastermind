lib_dir = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib_dir) #now we can require things inside of lib
puts __dir__
require 'CLI'

CLI.new($stdin, $stdout).start
