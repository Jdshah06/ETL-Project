DROP TABLE airport;
DROP TABLE confirmed;
DROP TABLE population;

CREATE TABLE airport (
	state VARCHAR,
	passenger_count INT
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

SELECT p.state, p.population, c.deaths, c.confirmed, p.population_density, a.passenger_count
FROM population AS p
JOIN confirmed AS c
ON p.state = c.state
LEFT JOIN airport AS a
ON p.state = a.state;





