require 'github_api'
require 'io/console'

print "Username: "
user_name = gets.strip
print "Password (nothing will be displayed):"
password  = STDIN.noecho(&:gets).strip
github = Github.new(:login => user_name, :password => password)
github.users.keys.create("title" => "FirehoseVagrant", 
	"key"=> File.open("~/.ssh/id_rsa.pub").read)
puts "\nok!"


