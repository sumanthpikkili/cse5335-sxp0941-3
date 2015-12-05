require 'mongo'
require 'json'

class MaincontrollerController < ApplicationController
 def output
    client = Mongo::Client.new([ 'ds063134.mongolab.com:63134' ],:database =>'heroku_1lfh5b08',:user=>'heroku_1lfh5b08',:password=>'k8di7ss33j6lndhcg76j87jd27');   
    db = client.database
    college=db.collection('universities')
    puts "Retrieve successful"
    result =  college.find({:rowid => params[:i]});
    puts "UNITID | OPEID | OPEID6 | INSTNM | CITY | STABBR | INSTURL"              
    result.each do |document|
  	puts "#{document['unitid']} | #{document['opeid']} | #{document['opeid6']} | #{document['instnm']} | #{document['city']} | #{document['stabbr']} | #{document['insturl']}" 
	end
	render json: result
end
end