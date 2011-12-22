require 'rubygems'
require 'thor'

class Tu < Thor
  include Thor::Actions

  desc "version", "Show TU version"
  def version
    require 'tu/version'
    puts "TU #{Tu::VERSION}"
  end

  desc "grep STRING_OR_REGEX", "Search for string or regexp in files within current directory filtered for rails app"
  def grep(search)
    run "grep -rs #{search} app config lib spec test features public/javascripts"
  end
  map "g" => "grep"
end
