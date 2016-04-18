# OwnLocalBackendProject

This program is built to run on OS X. This program will use the Ruby on Rails API MVC format. The following Ruby on Rails installation instructions were obtained from http://api.rubyonrails.org. 

###Getting Started

1. Install Rails at the command prompt if you haven't yet:

	`gem install rails`

2. At the command prompt, create a new Rails application:

	`rails new myapp`

   where “myapp” is the application name.

3. Change directory to myapp and start the web server:

	`cd myapp; rails server`

	Run with --help or -h for options.

4. Go to localhost:3000 and you'll see:

	`"Welcome aboard: You're riding Ruby on Rails!"`

These steps ensure that rails is installed and running correctly.

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

###Installation instructions for MongoMapper

1. Install gemcutter:
		`$ sudo gem install gemcutter --no-rdoc --no-ri`

2. There is no need to tumble gemcutter because it does not need to be primary source.

3. Now install MongoMapper
		`$ sudo gem install mongo_mapper --no-rdoc --no-ri`

4. Create the rails app in OwnLocalBackendProject:
		`$ rails new BusAPI`







