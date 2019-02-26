require 'Resolv'
require "ipaddress"

res = Resolv::DNS.new(:nameserver => [ARGV[1]],
                :search => [''],
                :ndots => 1)
#res.each do |key, value|
  #puts key + ' : ' + value
#end
#puts res.getaddress(ARGV[0])
typeclass = Resolv::DNS::Resource::IN::PTR
  if  IPAddress.valid? ARGV[0]

  puts res.getname(ARGV[0])
  else
  puts res.getaddress(ARGV[0])
end
