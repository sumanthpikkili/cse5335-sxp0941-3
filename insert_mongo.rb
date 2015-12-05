require 'mongo'
require 'csv'


mongo_uri = 'mongodb://heroku_1lfh5b08:k8di7ss33j6lndhcg76j87jd27@ds063134.mongolab.com:63134/heroku_1lfh5b08'

begin
    #Connecting to the Mongo Client
    client = Mongo::Client.new([ 'ds063134.mongolab.com:63134' ],:database =>'heroku_1lfh5b08',:user=>'heroku_1lfh5b08',:password=>'k8di7ss33j6lndhcg76j87jd27');  
    puts "Successfully connected to mongo db"
    db = client.database
    db.collection_names.each{|name| puts name }
        college=db.collection('universities')
        
    CSV.foreach('sample.csv', :headers => true) do |csv_obj|
               result=college.insert_one({ :rowid => csv_obj['ROWID'], :unitid => csv_obj['UNITID'], :opeid => csv_obj['OPEID'], :opeid6 => csv_obj['opeid6'], :instnm => csv_obj['INSTNM'], :city => csv_obj['CITY'], :stabbr => csv_obj['STABBR'], :insturl => csv_obj['INSTURL']})
                
        end    
        puts "Insertion into mongo db successful"

end
