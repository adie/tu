require 'rubygems'
require 'thor'

class Tu < Thor
  desc "version", "Show TU version"
  def version
    require 'tu/version'
    puts "TU #{Tu::VERSION}"
  end
end
