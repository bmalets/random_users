# RandomUsers

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

To generate one user:

 	RandomUsers.generate
 
 	=> {"results"=>[{"user"=>{"gender"=>"female", "name"=>{"title"=>"ms", "first"=>"louella", "last"=>"morris"}, "location"=>{"street"=>"7783 pine rd", "city"=>"roanoke", "state"=>"south dakota", "zip"=>"76909"}, "email"=>"louella.morris20@example.com", "username"=>"greenbear646", "password"=>"mellon", "salt"=>"wKnuvcZv", "md5"=>"46d9e5eb6b9c468675a87768f0ab23c2", "sha1"=>"99e1f77ce4037d9f0232959eea3d96d17e5644b5", "sha256"=>"13e3c57e28e408d31e4c5bf32386581ca6b451df5326aa20b03d3b87e4c3ce57", "registered"=>"923903753", "dob"=>"407694440", "phone"=>"(320)-516-6558", "cell"=>"(862)-119-2350", "SSN"=>"608-66-1189", "picture"=>"http://api.randomuser.me/portraits/women/82.jpg"}, "seed"=>"358fda53f008159", "version"=>"0.4"}]} 

To generate many users (e.g. 2):

	RandomUsers.generate 2
 
 	=> [{"results"=>[{"user"=>{"gender"=>"female", "name"=>{"title"=>"mrs", "first"=>"sherry", "last"=>"ray"}, "location"=>{"street"=>"8063 thornridge cir", "city"=>"cincinnati", "state"=>"alabama", "zip"=>"59964"}, "email"=>"sherry.ray42@example.com", "username"=>"whiteelephant306", "password"=>"carmex2", "salt"=>"4nGpr8SW", "md5"=>"54d0985920ba8c58a4662a2f21dae024", "sha1"=>"c4b391b4a7bfb9e3d2393eb021cdf6c4e2096aca", "sha256"=>"e0fb0abe8a97d0a9f2936a04e1eba952e3d520de51441cfe631b37abbaae7a77", "registered"=>"1208187789", "dob"=>"181435502", "phone"=>"(865)-345-2823", "cell"=>"(239)-397-8955", "SSN"=>"505-20-7857", "picture"=>"http://api.randomuser.me/portraits/women/87.jpg"}, "seed"=>"c727c73c2466321", "version"=>"0.4"}]}, {"results"=>[{"user"=>{"gender"=>"female", "name"=>{"title"=>"mrs", "first"=>"lillie", "last"=>"willis"}, "location"=>{"street"=>"2372 texas ave", "city"=>"bozeman", "state"=>"ohio", "zip"=>"78702"}, "email"=>"lillie.willis16@example.com", "username"=>"purplebear679", "password"=>"toriamos", "salt"=>"SyLMMxdU", "md5"=>"565f3e4b4ad09adf3224352d2052ead3", "sha1"=>"4640b25d4a8f64bf64e27bc0cb0fe745a333c65a", "sha256"=>"ac47c23398db53ccee51de0f800ba5b09e1feb8e24f351db0caf75e0e73eac3c", "registered"=>"1012611471", "dob"=>"345557577", "phone"=>"(153)-756-3049", "cell"=>"(946)-686-8893", "SSN"=>"423-84-4235", "picture"=>"http://api.randomuser.me/portraits/women/16.jpg"}, "seed"=>"add794adc70534f", "version"=>"0.4"}]}] 

## Contributing

1. Fork it ( http://github.com/<my-github-username>/random_users/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
