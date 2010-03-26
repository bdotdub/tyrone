begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = 'tyrone'
    gem.summary = 'care the shit out of your ui'
    gem.homepage = 'http://github.com/chrislloyd/tyrone'

    gem.author = 'Chris Lloyd'
    gem.email = 'christopher.lloyd@gmail.com'

    gem.rubyforge_project = gem.name
    gem.executable = gem.name
    gem.has_rdoc = false

    gem.add_dependency 'thor', '>= 0.13.0'
    gem.add_dependency 'sinatra', '>= 1.0'
    gem.add_dependency 'haml', '>= 2.2.0'
    gem.add_dependency 'bundler', '>= 0.9.0'
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts 'Jeweler (or a dependency) not available. Install it with: gem install jeweler'
end
