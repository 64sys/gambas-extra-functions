BEGIN TRANSACTION;
CREATE TABLE "uoms" (
	`uidx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`uname`	TEXT NOT NULL UNIQUE,
	`udesc`	TEXT
);
CREATE TABLE "suppliers" (
	`fidx`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`fname`	TEXT
);
CREATE TABLE "owners" (
	`oidx`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`oname`	TEXT
);
CREATE TABLE "logistics" (
	`lidx`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`lname`	TEXT
);
CREATE TABLE "jobs" (
	`jidx`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`jname`	TEXT,
	`jdate`	TEXT,
	`jowner`	INTEGER,
	`jlogistic`	INTEGER
);
CREATE TABLE "deliverables" (
	`didx`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`dname`	TEXT NOT NULL UNIQUE
);
CREATE TABLE "composites" (
	`aidx`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`aname`	TEXT NOT NULL UNIQUE,
	`adesc`	TEXT
);
CREATE TABLE "codes" (
	`cidx`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`cname`	TEXT,
	`cclass`	INT4,
	`cqty`	INTEGER,
	`cuom`	INTEGER,
	`cprice`	REAL
);
CREATE TABLE "codcls" (
	`sidx`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`sname`	TEXT
);
CREATE TABLE "boms" (
	`midx`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`mjob`	INTEGER,
	`mcod`	INTEGER,
	`mqty`	REAL
);
CREATE VIEW "view_jobs" AS
select
jidx,
jname,
jdate,
oname as jowner
from jobs left join owners on jowner=oidx
order by jdate,jname asc;
CREATE VIEW "view_codes" AS select
cidx,
cname,
sname as cclass,
cprice,
fname as csupplier,
uname as cuom

from codes
left join codcls on cclass=sidx
left join suppliers on csupplier=fidx
left join uoms on cuom=uidx

order by cname asc;
CREATE VIEW "view_boms" AS select
midx,
jname as mjob,
cname as mcod,
cclass as mclass,
mqty,
cprice as mprice,
cuom as muom,
csupplier as msupplier

from boms
left join jobs on mjob=jidx
left join view_codes on mcod=cidx

order by mjob,mcod asc;
COMMIT;
