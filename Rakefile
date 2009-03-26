# Look in the tasks/setup.rb file for the various options that can be
# configured in this Rakefile. The .rake files in the tasks directory
# are where the options are used.

begin
  require 'bones'
  Bones.setup
rescue LoadError
  begin
    load 'tasks/setup.rb'
  rescue LoadError
    raise RuntimeError, '### please install the "bones" gem ###'
  end
end

ensure_in_path 'lib'
require 'campaigning'

task :default => 'spec:run'

PROJ.name = 'campaigning'
PROJ.authors = 'Marcelo V. F. Menezes'
PROJ.email = 'gnumarcelo@gmail.com'
PROJ.url = 'FIXME (project homepage)'
PROJ.version = Campaigning::VERSION
PROJ.rubyforge.name = 'campaigning'

PROJ.spec.opts << '--color'

# EOF
