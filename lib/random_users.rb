require "random_users/version"

require 'net/http'
require 'uri'
require 'json'
require 'pp'

module RandomUsers
  # Your code goes here...
  def self.generate number=1
    users, service = [], RandomUserService.new
    number.times{ users << service.get_user }
    number == 1 ? users[0] : users 
  end

  class RandomUserService
    def initialize
      @url = URI.parse( 'http://api.randomuser.me/' )
    end

    def get_user
      JSON.parse( Net::HTTP.get( @url ) )    
    end  
  end

end
