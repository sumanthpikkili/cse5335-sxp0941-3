require 'mongo'
require 'csv'

mongo_uri = 'mongodb://heroku_8c77z5bn:s650vnnnpv39p3h8epm0jima98@ds053764.mongolab.com:53764/heroku_8c77z5bn'

begin
    client = Mongo::Client.new([ 'ds053764.mongolab.com:53764' ],:database =>'heroku_8c77z5bn',:user=>'heroku_8c77z5bn',:password=>'s650vnnnpv39p3h8epm0jima98');
    puts "Successfully connected to mongo db"
    puts "Enter the primary key value"
    pk = gets
    if pk.strip! == nil
	pkey=pk
    else
	pkey=pk
    end
    db = client.database
    college=db.collection('universities')
    puts "Retrieve successful"
    puts "The retrieved data for the primary key value entered is"
    result = college.find({ :unitid =>pkey })
    puts "UNITID | OPEID | OPEID6 | INSTNM | CITY | STABBR | INSTURL"              
    result.each do |document|
  	puts "#{document['unitid']} | #{document['opeid']} | #{document['opeid6']} | #{document['instnm']} | #{document['city']} | #{document['stabbr']} | #{document['insturl']}" 
	
    end
end
