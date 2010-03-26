require 'thor'

class Tyrone::Cli < Thor
  include Thor::Actions

  source_paths << Tyrone.templates

  desc 'init', 'creates a new tyrone project in the current directory'
  def init
    source_root = Tyrone.root

    copy_file 'Rakefile', 'Rakefile'
    copy_file 'Gemfile', 'Gemfile'
    copy_file 'config.ru'
    copy_file 'init.rb'
    copy_file 'app.rb', 'app.rb'

    empty_directory 'mockups'

    empty_directory 'public'
    template 'layout.haml.erb', 'mockups/layout.haml', :project => Pathname.pwd.basename

    empty_directory 'public/css'
    copy_file 'http://html5resetcss.googlecode.com/files/html5reset-1.4.1.css', 'public/css/reset.css'

    empty_directory 'public/js'
    copy_file 'http://github.com/toolmantim/states.js/raw/master/states.js', 'public/js/jquery.states.js'
    copy_file 'http://github.com/quackingduck/jquery.grid.js/raw/master/jquery.grid.js', 'public/js/jquery.grid.js'

    empty_directory 'features'
  end

  desc 'mock NAME', 'creates a new mock'
  def mock(name)
    name.gsub!(' ','-')

    empty_directory 'mockups'
    create_file "mockups/#{name}.haml"
  end

end
