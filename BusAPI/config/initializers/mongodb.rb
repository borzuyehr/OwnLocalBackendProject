#include mongomapper
require 'mongo_mapper'

#assign pointer for to mongo yaml config file
configfile = "#{RAILS_ROOT}/config/mongodb.yml"

#check if configfile is correctly placed
if File.exist? configfile 
	config = YAML.load(File.read(configfile))[RAILS_ENV]
	if congfig
		#instantiate the connection to mongodb driver
		MongoMapper.connection = Mongo::Connection.new(config["server"], config["port"] || 27017)
		MongoMapper.database = config["database"]
	end
end
