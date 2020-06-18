DROP TABLE airport;
DROP TABLE confirmed;
DROP TABLE population;

CREATE TABLE airport (
	airport_name VARCHAR,
	state VARCHAR,
	passenger_count INT,
	year INT
);

CREATE TABLE confirmed (
	state VARCHAR,
	confirmed INT,
	deaths INT,
	percent DECIMAL
);

CREATE TABLE population (
	state VARCHAR,
	population INT,
	population_density NUMERIC
);

SELECT * FROM airport;
SELECT * FROM confirmed;
SELECT * FROM population;

/* This is the code that works*/
SELECT p.state, p.population, c.deaths, c.confirmed, p.population_density
FROM population AS p
JOIN confirmed AS c
ON p.state = c.state
ORDER BY state ASC;

/*This is the code that does not work as there are more than 1 of the same state in df airport*/
SELECT p.state, p.population, c.deaths, c.confirmed, p.population_density, a.airport, a.passenger_count
FROM population AS p
JOIN confirmed AS c
ON p.state = c.state
JOIN airport AS a
ON p.state = a.state
ORDER BY state ASC;



