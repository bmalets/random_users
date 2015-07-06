# RandomUsers [![Gem Version](https://badge.fury.io/rb/random_users.svg)](http://badge.fury.io/rb/random_users)

  It's a gem for using http://randomuser.me/ service in ruby/rails apps.

  Using this gem you can easily generate random users for your app.

## Installation

Add this line to your application's Gemfile:

    gem 'random_users'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install random_users

## Usage

Generate user:

	RandomUsers.generate	    # => generate hash with random user data

	RandomUsers.generate_men	# => generate hash with random male user data

	RandomUsers.generate_women	# => generate hash with random female user data

Generate users:

	RandomUsers.generate( number )	    	# => generate array of hashes with random user data

	RandomUsers.generate_men( number )		# => generate array of hashes with random male user data

	RandomUsers.generate_women( number )	# => generate array of hashes with random female user data
	
## Example of generated user data:

	{
	        "gender":"male",
	        "name":{
	            "title":"mr",
	            "first":"harvey",
	            "last":"steward"
	        },
	        "location":{
	            "street":"4956 fifth st",
	            "city":"indianapolis",
	            "state":"west virginia",
	            "zip":"23684"
	        },
	        "email":"harvey.steward34@example.com",
	        "username":"whitegoose996",
	        "password":"flanker",
	        "salt":"YxYxDkym",
	        "md5":"3ae2f676f0af99fc4e369ffca60ef834",
	        "sha1":"e077746c2e2f8dd7a6d3d3f6e1220ed2674e58f5",
	        "sha256":"f7f80c8588147f5504549bc8330cd52c9fcded3202d29f2ad8cd4324035d4c15",
	        "registered":"1196094856",
	        "dob":"305341965",
	        "phone":"(569)-482-6175",
	        "cell":"(135)-829-9127",
	        "SSN":"504-27-7675",
	        "picture":"http://api.randomuser.me/portraits/men/40.jpg"
	}

## Contributing

1. Fork it ( http://github.com/bmalets/random_users/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
