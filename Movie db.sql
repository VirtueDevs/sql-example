CREATE Table Movie
(mId int(5),
 title varchar(25) NOT NULL,
 year int(5),
 director varchar(20),
 primary key (mId)); 

 CREATE Table Reviewer
(rId int(5),
 name varchar(20) NOT NULL,
 primary key(rId));

 CREATE TABLE Rating
 (rId int(5),
 mId int(5),
 stars int(1) NOT NULL,
 ratingDate DATE,
 PRIMARY KEY(rId,mId),
 FOREIGN KEY (mId) REFERENCES Movie,
 FOREIGN KEY (rId) REFERENCES Reviewer);

 insert into Movie(mId, title, year, director)
      VALUES(101, '2001 space odissey', 1969, 'Stanley Kubrick');

insert into Movie(mId, title, year, director)
      VALUES(102, 'Space Jam', 1996, 'Joe Pykta');

insert into Movie(mId, title, year, director)
      VALUES(103, 'Parasite', 2019, 'Bong joon-ho');
  
alter table Movie 
ADD Genre varchar(15);

update Movie
  set Genre = 'Sci-Fi' 
  WHERE mId = 101;

update Movie
  set Genre = 'Action'
  WHERE mId = 102;

update Movie
  set Genre = 'Horror'
  WHERE mId = 103;

  



  