CREATE TABLE post_offices(
	id SERIAL NOT NULL,
	name VARCHAR(50) NOT NULL,
	pincode INT4 NOT NULL,
	office_type VARCHAR(5) NOT NULL,
	delivery_type VARCHAR(15) NOT NULL,
	division VARCHAR(50) NOT NULL,
	region VARCHAR(50) NOT NULL,
	circle VARCHAR(50) NOT NULL,
	taluk VARCHAR(50),
	district VARCHAR(50) NOT NULL,
	state VARCHAR(50) NOT NULL,
	PRIMARY KEY (id)
);

CREATE INDEX post_offices_pincode ON post_offices (pincode);

COPY post_offices(name, pincode, office_type, delivery_type, division, region, circle, taluk, district, state) FROM '/Users/praky/Copy/rails/pincode/data/all_india_pin_code.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');

S.O = Sub Office
B.O = Branch Office
H.O = Head Office