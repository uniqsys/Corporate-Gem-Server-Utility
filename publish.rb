require 'bundler'
Bundler.require

GEM_SERVER = 'http://localhost:9393/'

if ARGV.size != 1
  puts "Please, provide only the gem file to be uploaded to the gem server!"
  exit(-1)
end

gem_file_name = ARGV[0]

unless File.exists?(gem_file_name)
  puts "File #{gem_file_name} does not exist!"
  exit(-1)
end

begin
  puts "Sending '#{gem_file_name}' to the gem server..."
  response = RestClient.post("#{GEM_SERVER}api/gems/new", :file => File.new(gem_file_name))
  response = Yajl::Parser.parse(response)
rescue Exception => ex
  puts "The following error has occured: #{ex.to_s}".red
  exit(-256)
end

puts response['message'].send(response['result'] == 0 ? :green : :yellow)
exit(response['result'])
