/* assingment 2 part a*/
SELECT Alcohol 
FROM beers as b
JOIN taps as t
	ON b.BeerID = t.BeerID
WHERE TAP = 'red'

/* assingment 2 part b*/
SELECT Name
FROM beers 
WHERE BeerID NOT IN (
	SELECT BeerID 
	FROM taps
	)
/* assingment 2 part c*/
SELECT tap COUNT(DISTINCT(BeerID)) 
FROM taps
GROUP BY tap

/* assingment 5 part a*/
CREATE table cocktails(
	cocktailID int PRIMARY KEY, 
	Price float
)

CREATE table ingedients(
	cocktailID int, 
	Ingredient varchar(255),
	Amount float,
	PRIMARY KEY(cocktailID,ingedient)
	FOREIGN KEY(cocktailID) REFERENCES cocktails(cocktailID)
)
	
/* Write CREATE TABLE statements for the second translation (a), 
namely for the object-oriented translation. */	
CREATE table song (
	title VARCHAR(255),
	year INTEGER, 
	countryName VARCHAR(255),
	PRIMARY KEY (title)
	FOREIGN KEY(countryName) REFERENCES country(name)
);

CREATE table country ( 
	name VARCHAR(255),
	popularSongTitle VARCHAR(255),
	PRIMARY KEY (name)
	FOREIGN KEY(popularSongTitle) REFERENCES song(title)
);
	
CREATE table rock balled (
	title VARCHAR(255),
	year INTEGER, 
	countryName VARCHAR(255),
	guitarSole INTEGER,
	hairLength INTEGER,
	PRIMARY KEY (title)
	FOREIGN KEY(countryName) REFERENCES country(name)
);

CREATE table pop song (
	title VARCHAR(255),
	year INTEGER, 
	countryName VARCHAR(255),
	autotune BIT(1),
	PRIMARY KEY (title)
	FOREIGN KEY(countryName) REFERENCES country(name)
);
	
	
/* 2 a*/
SELECT EduName
FROM educations AS e
INNER JOIN timeslots AS t
	ON e.EduID = t.EduID
WHERE timeslot = 'afternoon';

/* 2 b*/

SELECT COUNT(DISTINCT Groups)
FROM educations AS e
INNER JOIN timeslots AS t
	ON e.EduID = t.EduID
WHERE timeslot = 'morning';

/* 2 c*/
SELECT EduID
FROM educations
WHERE EduID not in (
	SELECT DISTINCT EduID
	FROM timeslots
); 

/* 2 d*/
SELECT EduName, EduID
FROM educations AS e
INNER JOIN timeslots AS t
	ON e.EduID = t.EduID
ORDER BY timeslot desc,
	EduName asc; 
	

/* 2 e*/
SELECT EduName
FROM educations AS e
INNER JOIN timeslots AS tm
	ON e.EduID = tm.EduID
INNER JOIN timeslots AS ta
	ON e.EduID = ta.EduID
WHERE tm.timeslot = 'morning' 
and ta.timeslot = 'afternoon';
 




CREATE INDEX players_index ON players(PlayerID);  

CREATE INDEX games_index ON games(WhitePlayerID, BlackPlayerID); 

























