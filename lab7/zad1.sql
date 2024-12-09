 USE stuslu;
 
 CREATE TEMPORARY TABLE orgjedPred (
 sifOrgjed INT NOT NULL,
 nazOrgjed CHAR(60) NOT NULL,
 sifNadorgjed INT
 );
 
 CREATE TEMPORARY TABLE orgjedNast (
 sifOrgjed INT NOT NULL,
 nazOrgjed CHAR(60) NOT NULL,
 sifNadorgjed INT
 );
 
 CREATE UNIQUE INDEX orgjedPredunique ON orgjedPred(sifOrgjed);
 CREATE UNIQUE INDEX orgjedNastunique ON orgjedNast(sifOrgjed);
 
 INSERT INTO orgjedPred SELECT * FROM orgjed 
 WHERE sifOrgjed IN (SELECT DISTINCT sifOrgjed FROM pred);
 
 INSERT INTO orgjedNast SELECT * FROM orgjed
 WHERE sifOrgjed IN (SELECT DISTINCT sifOrgjed FROM nastavnik);
 
 SELECT * FROM orgjedPred;
 SELECT * FROM orgjedNast;
 