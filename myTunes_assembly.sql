PRAGMA foreign_keys=OFF;

DROP TABLE IF EXISTS songs;
DROP TABLE IF EXISTS cds;
DROP TABLE IF EXISTS myCDs;
DROP TABLE IF EXISTS mySongs;

CREATE TABLE myCDs(
      cd_id text primary key not null, --cd unique id
      title text NOT NULL, --title of CD
      artist text NOT NULL, --artist whose CD it is or "various artists"
      producer text default NULL,
      year integer,
      contributer text --student number who contirbuted the data
      );

CREATE TABLE mySongs(
      song_id integer primary key not null, --auto incrementing key
      title text NOT NULL, --title of song
      composer text NOT NULL, --person or persons who wrote the song
      cd_id text NOT NULL, --cd this song appears on
      track integer NOT NULL, --track number of the song
      contributer text --student number who contirbuted the data
      );

.read "myTunes_Abdelghny.sql"

INSERT INTO myCDs SELECT * FROM cds;
INSERT INTO mySongs (title, composer, cd_id, track, contributer) SELECT title, composer, cd_id, track, contributer FROM songs;
DROP TABLE IF EXISTS songs;
DROP TABLE IF EXISTS cds;

.read "myTunes_Ali.sql"

INSERT INTO myCDs SELECT * FROM cds;
INSERT INTO mySongs (title, composer, cd_id, track, contributer) SELECT title, composer, cd_id, track, contributer FROM songs;
DROP TABLE IF EXISTS songs;
DROP TABLE IF EXISTS cds;

.read "myTunes_Fatemeh.sql"

INSERT INTO myCDs SELECT * FROM cds;
INSERT INTO mySongs (title, composer, cd_id, track, contributer) SELECT title, composer, cd_id, track, contributer FROM songs;
DROP TABLE IF EXISTS songs;
DROP TABLE IF EXISTS cds;

.read "myTunes_Monica.sql"

INSERT INTO myCDs SELECT * FROM cds;
INSERT INTO mySongs (title, composer, cd_id, track, contributer) SELECT title, composer, cd_id, track, contributer FROM songs;
DROP TABLE IF EXISTS songs;
DROP TABLE IF EXISTS cds;

.read "myTunes_Rezieh.sql"

INSERT INTO myCDs SELECT * FROM cds;
INSERT INTO mySongs (title, composer, cd_id, track, contributer) SELECT title, composer, cd_id, track, contributer FROM songs;
DROP TABLE IF EXISTS songs;
DROP TABLE IF EXISTS cds;

.read "myTunes_Saman.sql"

INSERT INTO myCDs SELECT * FROM cds;
INSERT INTO mySongs (title, composer, cd_id, track, contributer) SELECT title, composer, cd_id, track, contributer FROM songs;
DROP TABLE IF EXISTS songs;
DROP TABLE IF EXISTS cds;
ALTER TABLE mySongs RENAME TO songs;
ALTER TABLE myCDs RENAME TO cds;
