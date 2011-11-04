$LOAD_PATH.unshift File.expand_path("../lib/", __FILE__)
require 'version'

task :build do
  system "gem build uniq-gem-repo.gemspec"
end
 
task :release => :build do
  system "gem push uniq-gem-repo-#{UniqGemRepo::VERSION}"
end
