### CSE5335-Project 3
### Author Name: Sumanth Pikkili
### UTA-ID: 1001100941


Heroku Website

    cse5335-project-3.herokuapp.com
    
NOSQL Database

    Heroku MongoLab

Server - Side Framework

    Rails
    
Browser Framework

    JQuery
    
Instructions to Test

    - Open the project 3 heroku website (URL mentioned above)
    - Click on the "Show Universities" button to show the list of universities, 20 records at a time with a 0.5 second delay between the display of each record and a fadeIn animation for the arrival of each record.


What aspect of the implementation did you find easy, if any, and why?

    I found inserting into the Heroku Mongo database easy as I have already worked on inserting records from csv file into the Mongo DB in Project 2. I also found retrieving from the Mongo database easy as I had worked on rendering JSON data from the controller in Project 1 and the only difference in this project was to render contents of Mongo database instead of JSON data.
    

What aspect of the implementation did you find hard, if any, and why?

    I found making multiple AJAX requests difficult. My initial thought was to use a for loop to make 100 Ajax style requests. However, using this logic, I found difficulties in clearing the records after 20 records were displayed on the browser. Thus, I had to use the JQuery setInterval method to produce the 0.5 seconds delay and clear the records.

If you were to use these technologies professionally, what would be your biggest concern?

    I would definitely prefer using Ruby in a professional environment as Ruby is very easy to learn and simple to understand and implement provided you have prior knowledge on the best practises, OOP, functional programming etc. On the other hand, Ruby on Rails, the web framework, is not so easy to learn. If you want to do small projects, you can use Rails out of the box and do well. For moderately larger projects, you will need to understand more of the underpinnings and then it becomes trickier. In the IT industry, there are usually very large projects and a huge development team too. Spending the time and effort to understand Rails completely would definitely be a big concern professionally.

Ubuntu Commands to Upload Code to Github

    git init
    echo "# cse5335-sxp0941-3" >> README.md
    git add README.md
    git commit -m "Final Commit"
    git remote add origin https://github.com/sumanthpikkili/cse5335-sxp0941-3.git
    git push -u origin master

Ubuntu Commands to deploy to Heroku Server

    heroku login
    git clone https://github.com/sumanthpikkili/cse5335-sxp0941-3.git
    cd cse5335-sxp0941-3
    heroku create cse5335-project-3
    git push heroku master
    heroku open


Sharing

    heroku sharing:add samvaran.rallabandi@mavs.uta.edu 
    heroku sharing:add emmons@uta.edu

References

    http://www.w3schools.com/jquery/jquery_ref_effects.asp
    http://stackoverflow.com/questions/453209/how-do-i-get-the-total-json-record-count-using-jquery
    http://www.w3schools.com/jsref/met_win_setinterval.asp
    http://www.andrewhavens.com/posts/20/beginners-guide-to-creating-a-rest-api/
    
