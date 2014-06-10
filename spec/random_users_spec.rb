require 'spec_helper'

describe "Random Users Generation Tests" do

  def check_user( user, sex='rand' )
    expect( [ 
      'gender',   'name',     'location',   'email', 
      'username', 'password', 'salt',       'md5', 
      'sha1',     'sha256',   'registered', 'dob', 
      'phone',    'cell',     'SSN',        'picture' 
    ] ).to eq( user.keys )

    expect( user['gender'].empty?             ).to eq( false )
    expect( user['name'].empty?               ).to eq( false )
    expect( user['name'].class.to_s           ).to eq( 'Hash' )
    expect( user['name']['title'].empty?      ).to eq( false )
    expect( user['name']['first'].empty?      ).to eq( false )
    expect( user['name']['last'].empty?       ).to eq( false )
    expect( user['location'].empty?           ).to eq( false )
    expect( user['location'].class.to_s       ).to eq( 'Hash' )
    expect( user['location']['street'].empty? ).to eq( false )
    expect( user['location']['city'].empty?   ).to eq( false )
    expect( user['location']['state'].empty?  ).to eq( false )
    expect( user['location']['zip'].empty?    ).to eq( false )
    expect( user['email'].empty?              ).to eq( false )
    expect( user['username'].empty?           ).to eq( false )
    expect( user['password'].empty?           ).to eq( false )
    expect( user['salt'].empty?               ).to eq( false )
    expect( user['md5'].empty?                ).to eq( false )
    expect( user['sha1'].empty?               ).to eq( false )
    expect( user['sha256'].empty?             ).to eq( false )
    expect( user['registered'].empty?         ).to eq( false )
    expect( user['dob'].empty?                ).to eq( false )
    expect( user['phone'].empty?              ).to eq( false )
    expect( user['cell'].empty?               ).to eq( false )
    expect( user['SSN'].empty?                ).to eq( false )
    expect( user['picture'].empty?            ).to eq( false )

    if sex == 'male'
      expect( user['gender'] ).to eq( 'male' )
      expect( ['mr']         ).to include( user['name']['title'] )
    elsif sex == 'female'
      expect( user['gender']        ).to eq( 'female' )
      expect( ['ms', 'miss', 'mrs'] ).to include( user['name']['title'] )
    end
  end

  10.times do |number|

    it "Generate 1 random user test" do
      check_user( RandomUsers.generate )
    end

    it "Generate many random users test" do
      u_num = (2..26).to_a.sample
      users = RandomUsers.generate( u_num )
      
      expect( users.class.to_s ).to eq( 'Array' )
      expect( users.empty?     ).to eq( false   )
      expect( users.count      ).to eq( u_num   )

      users.each{ |user| check_user( user ) }
    end      

    it "Generate 1 male user test" do
      check_user( RandomUsers.generate_men, 'male' )
    end

    it "Generate many male users test" do
      u_num = (2..26).to_a.sample
      users = RandomUsers.generate_men( u_num )
      
      expect( users.class.to_s ).to eq( 'Array' )
      expect( users.empty?     ).to eq( false   )
      expect( users.count      ).to eq( u_num   )

      users.each{ |user| check_user( user, 'male' ) }
    end 

    it "Generate 1 male user test" do
      check_user( RandomUsers.generate_women, 'female' )
    end

    it "Generate many male users test" do
      u_num = (2..26).to_a.sample
      users = RandomUsers.generate_women( u_num )
      
      expect( users.class.to_s ).to eq( 'Array' )
      expect( users.empty?     ).to eq( false   )
      expect( users.count      ).to eq( u_num   )

      users.each{ |user| check_user( user, 'female' ) }
    end

  end

end
