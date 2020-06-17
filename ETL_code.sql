DROP TABLE airport;
DROP TABLE confirmed;
DROP TABLE population;

CREATE TABLE airport (
	airport VARCHAR,
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

SELECT p.state, p.population, c.deaths, c.confirmed, p.population_density
FROM population AS p
JOIN confirmed AS c
ON p.state = c.state
ORDER BY state ASC;




