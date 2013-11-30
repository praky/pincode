# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

connection = ActiveRecord::Base.connection();
csv_file = File.expand_path(File.join(File.dirname(__FILE__),'data/all_india_pin_code.csv'))
connection.execute(
	<<-eos
	COPY post_offices(name, pincode, office_type, delivery_type, division, region, circle, taluk, district, state)
	FROM '#{csv_file}' 
	WITH (FORMAT CSV, HEADER true, DELIMITER ',')
	eos
	)
