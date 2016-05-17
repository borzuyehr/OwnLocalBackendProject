# OwnLocalBackendProject

This program is built to run on OS X. This program will use the Ruby on Rails API MVC format. The following Ruby on Rails installation instructions were obtained from http://api.rubyonrails.org. 


###Installation instruction for MongoDB on OS X:

https://docs.mongodb.org/manual/tutorial/install-mongodb-on-os-x/

###Importing CSV file to MongoDB

1. Save the CSV file in /OwnLocalBackendProject

2. Start Mongo:

		`$ mongod --dbpath /data/db`

3. Open a new terminal and start a new client:

		`$ mongo`

4. In a separate terminal change to /OwnLocalBackendProject directory and run:

		`$ mongoimport -d mydb -c businesses --type csv --file 50k_businesses.csv --headerline`

5. View that files were correctly uploaded to MongoDB:

		`db.businesses.find()`

###Project specifications

1. Install Rails at the command prompt if you haven't yet:

	`gem install rails`

2. At the command prompt, create a new Rails application:

	`rails new BusAPI --skip-active-record`

   where “BusAPI” is the application name.

3. Change directory to BusAPI:

	`cd BusAPI`

	Run with --help or -h for options.

4. Add mongoid to gemfile
	
	`gem 'mongoid'`

5. Run bundle install

	`bundle install`

6. Generate the mongoid config file

	`rails g mongoid:config`

7. Generate the scaffold structure

	`rails g scaffold business name address`

8. Add pagination gem to gemfile

	`gem 'will_paginate_mongoid'`

9. Run bundle install

	`bundle install`

10. Start the Rails server

	`rails server`

11. Go to localhost:3000/businesses and you'll see all businesses paginated 50 per page 	sorted by _id.

##Query for record based on _id

1. Start the rails console to test query in the BusAPI directory

	`rails c`

2. Query for the business based on _id

	`Business.where(:_id => 50).first`

--The number in the above code can be replaced by any number between 0 and 49999.
	If a number is not in this range, null is returned.


These steps ensure that rails is installed and running correctly. Make sure Mongodb is running before starting the rails server.















