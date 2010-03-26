require 'pathname'

module Tyrone
  extend self

  def root
    Pathname(__FILE__).dirname.join('..')
  end

  def version
    root.join('VERSION').read.freeze
  end

  def templates
    root.join('templates')
  end
end

require 'tyrone/cli'
