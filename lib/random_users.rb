require "random_users/version"

require 'net/http'
require 'uri'
require 'json'
require 'pp'

module RandomUsers

  def self.generate number=1
    users, service = [], RandomUserGenerator.new
    number = 20 if number > 20
    number.times{ users << service.get_user }
    number == 1 ? users[0] : users 
  end

  def self.generate_men number=1
    users, service = [], RandomMenGenerator.new
    number = 20 if number > 20
    number.times{ users << service.get_user }
    number == 1 ? users[0] : users 
  end

  def self.generate_women number=1
    users, service = [], RandomWomenGenerator.new
    number = 20 if number > 20
    number.times{ users << service.get_user }
    number == 1 ? users[0] : users 
  end

  class RandomUserGenerator
    def initialize
      @url = URI.parse( 'http://api.randomuser.me/' )
    end

    def get_user
      JSON.parse( Net::HTTP.get( @url ) )    
    end  
  end

  class RandomMenGenerator
    def initialize
      @url = URI.parse( 'http://api.randomuser.me/?gender=male' )
    end

    def get_user
      JSON.parse( Net::HTTP.get( @url ) )    
    end   
  end

  class RandomWomenGenerator
    def initialize
      @url = URI.parse( 'http://api.randomuser.me/?gender=female' )
    end

    def get_user
      JSON.parse( Net::HTTP.get( @url ) )    
    end   
  end

end
