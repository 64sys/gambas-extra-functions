BEGIN TRANSACTION;
CREATE TABLE "uoms" (
	`uidx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`uname`	TEXT,
	`usymbol`	TEXT NOT NULL UNIQUE
);
CREATE TABLE "suppliers" (
	`fidx`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`fname`	TEXT,
	`fphone`	TEXT,
	`fmovile`	TEXT,
	`faddress`	TEXT,
	`fcity`	INTEGER,
	FOREIGN KEY(`fcity`) REFERENCES `cities` ( `yidx` )
);
CREATE TABLE "owners" (
	`oidx`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`oname`	TEXT,
	`ophone`	TEXT,
	`omovile`	TEXT,
	`oaddress`	TEXT,
	`ocity`	INTEGER,
	FOREIGN KEY(`ocity`) REFERENCES `cities` ( `yidx` )
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
	`jlogistic`	INTEGER,
	FOREIGN KEY(`jowner`) REFERENCES `owners` ( `oidx` ),
	FOREIGN KEY(`jlogistic`) REFERENCES `logistics` ( `lidx` )
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
	`cclass`	INTEGER,
	`cqty`	REAL,
	`cuom`	INTEGER,
	FOREIGN KEY(`cclass`) REFERENCES `codcls` ( `sidx` ),
	FOREIGN KEY(`cuom`) REFERENCES `uoms` ( `uidx` )
);
CREATE TABLE "codcls" (
	`sidx`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`sname`	TEXT
);
CREATE TABLE `cities` (
	`yidx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`yname`	TEXT NOT NULL UNIQUE
);
CREATE TABLE "boms" (
	`midx`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`mjob`	INTEGER,
	`mcod`	INTEGER,
	`mqty`	REAL,
	`mprice`	REAL,
	`msupplier`	INTEGER,
	FOREIGN KEY(`mjob`) REFERENCES `jobs` ( `jidx` ),
	FOREIGN KEY(`mcod`) REFERENCES `codes` ( `cidx` ),
	FOREIGN KEY(`msupplier`) REFERENCES `suppliers` ( `fidx` )
);
CREATE VIEW "view_uoms" AS select
uidx,
uname,
usymbol

from uoms

order by uname asc;
CREATE VIEW "view_suppliers" AS select
fidx,
fname,
faddress,
fphone,
fmovile,
yname as fcity

from suppliers
left join cities on fcity=yidx

order by fname asc;
CREATE VIEW "view_owners" AS select
oidx,
oname,
oaddress,
ophone,
omovile,
yname as ocity

from owners
left join cities on ocity=yidx

order by oname asc;
CREATE VIEW "view_logistics" AS select
lidx,
lname

from logistics

order by lname asc;
CREATE VIEW "view_jobs" AS select
jidx,
jname,
jdate,
oname as jowner,
lname as jlogistic

from jobs
left join owners on jowner=oidx
left join logistics on jlogistic=lidx
order by jdate,jname asc;
CREATE VIEW "view_deliverables" AS select
didx,
dname

from deliverables

order by dname asc;
CREATE VIEW "view_composites" AS select
aidx,
aname,
adesc

from composites

order by aname asc;
CREATE VIEW "view_codes" AS select
 cidx, 
 cname, 
 sname as cclass, 
 cqty, 
 uname as cuom

 from codes
 left join codcls on cclass=sidx
 left join uoms on cuom=uidx
 order by cname asc;
CREATE VIEW "view_codcls" AS select
sidx,
sname

from codcls

order by sname asc;
CREATE VIEW "view_cities" AS select
yidx,
yname

from cities

order by yname asc;
CREATE VIEW "view_boms" AS select
midx,
jname as mjob,
cname as mcod,
cclass as mclass,
mqty,
mprice,
cuom as muom,
msupplier

from boms
left join jobs on mjob=jidx
left join view_codes on mcod=cidx

order by mjob,mcod asc;
COMMIT;
