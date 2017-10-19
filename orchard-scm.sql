BEGIN TRANSACTION;
CREATE TABLE `varietas` (
	`vidx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`vname`	TEXT NOT NULL,
	`vnik`	TEXT,
	`vcode`	TEXT,
	`vspecie`	INTEGER,
	`vprice`	REAL,
	`vdesc`	TEXT,
	`vseeding`	TEXT,
	`vtransplanting`	TEXT,
	`vharvest`	TEXT,
	`vseeding2`	TEXT,
	`vtransplanting2`	TEXT,
	`vharvest2`	TEXT,
	`vwater`	INTEGER,
	`vremark`	TEXT,
	FOREIGN KEY(`vspecie`) REFERENCES `species`(`sidx`)
);
CREATE TABLE `unfavorables` (
	`yidx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`yplant`	INTEGER,
	`yfav`	INTEGER,
	`yremark`	TEXT,
	FOREIGN KEY(`yplant`) REFERENCES `species`(`sidx`),
	FOREIGN KEY(`yfav`) REFERENCES `species`(`sidx`)
);
CREATE TABLE 'suppliers' (
	`fidx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`fname`	TEXT NOT NULL UNIQUE,
	`fphone`	TEXT,
	`fmovile`	TEXT,
	`femail`	TEXT,
	`fweb`	TEXT,
	`faddress`	TEXT
);
CREATE TABLE `species` (
	`sidx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`sname`	TEXT NOT NULL UNIQUE,
	`sdesc`	TEXT,
	`scode`	TEXT,
	`sremark`	TEXT
);
CREATE TABLE `sowingclass` (
	`gidx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`gname`	TEXT NOT NULL UNIQUE
);
CREATE TABLE `sowing` (
	`widx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`wseed`	INTEGER,
	`wseedqty`	INTEGER,
	`wsuccessful`	INTEGER,
	`wplot`	INTEGER,
	`wmethod`	INTEGER,
	`waditives`	INTEGER,
	`wdate`	TEXT,
	FOREIGN KEY(`wseed`) REFERENCES `seeds` ( `didx` ),
	FOREIGN KEY(`wplot`) REFERENCES `plots` ( `tidx` ),
	FOREIGN KEY(`wmethod`) REFERENCES `sowingclass` ( `gidx` ),
	FOREIGN KEY(`waditives`) REFERENCES `aditives` ( `aidx` )
);
CREATE TABLE `seeds` (
	`didx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`dname`	TEXT,
	`dvariety`	INTEGER,
	`dbatch`	TEXT,
	`dmark`	INTEGER,
	`dsupplier`	INTEGER,
	`dbioclass`	INTEGER,
	`dqty`	REAL,
	`dprice`	REAL,
	`ddate`	TEXT,
	`dremark`	INTEGER,
	`dgermtemp`	REAL,
	`dgermdays`	INTEGER,
	`dframe`	TEXT,
	FOREIGN KEY(`dvariety`) REFERENCES 'varietas' ( `vidx` ),
	FOREIGN KEY(`dmark`) REFERENCES `marks` ( `kidx` ),
	FOREIGN KEY(`dsupplier`) REFERENCES `suppliers` ( `fidx` ),
	FOREIGN KEY(`dbioclass`) REFERENCES `bioclass` ( `bidx` ),
	FOREIGN KEY(`dremark`) REFERENCES `remarks` ( `nidx` )
);
CREATE TABLE `remarks` (
	`nidx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`nname`	TEXT NOT NULL UNIQUE
);
CREATE TABLE `plotsclass` (
	`qidx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`qname`	TEXT NOT NULL UNIQUE,
	`qdesc`	TEXT
);
CREATE TABLE `plots` (
	`tidx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`tname`	TEXT NOT NULL,
	`tform`	TEXT,
	`tclass`	INTEGER,
	`tdate`	TEXT,
	`tsurface`	REAL DEFAULT (0),
	FOREIGN KEY(`tclass`) REFERENCES `plotsclass` ( `qidx` )
);
CREATE TABLE `plants` (
	`pidx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`pvariety`	INTEGER,
	`pbatch`	TEXT,
	`pmark`	INTEGER,
	`psupplier`	INTEGER,
	`pbioclass`	INTEGER,
	`pqty`	REAL,
	`pprice`	REAL,
	`pdate`	TEXT,
	`premark`	INTEGER,
	`pframe`	TEXT,
	FOREIGN KEY(`pvariety`) REFERENCES `varietas` ( `vidx` ),
	FOREIGN KEY(`pmark`) REFERENCES `marks` ( `kidx` ),
	FOREIGN KEY(`psupplier`) REFERENCES `suppliers` ( `fidx` ),
	FOREIGN KEY(`pbioclass`) REFERENCES `bioclass` ( `bidx` ),
	FOREIGN KEY(`premark`) REFERENCES `remarks` ( `nidx` )
);
CREATE TABLE `plantingclass` (
	`jidx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`jname`	TEXT NOT NULL UNIQUE
);
CREATE TABLE `planting` (
	`hidx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`hplant`	INTEGER,
	`hplantqty`	INTEGER,
	`hsuccessful`	INTEGER,
	`hplot`	INTEGER,
	`hmethod`	INTEGER,
	`haditives`	INTEGER,
	`hdate`	TEXT,
	FOREIGN KEY(`hplant`) REFERENCES `seeds` ( `didx` ),
	FOREIGN KEY(`hplot`) REFERENCES `plots` ( `tidx` ),
	FOREIGN KEY(`hmethod`) REFERENCES `plantingclass` ( `gidx` ),
	FOREIGN KEY(`haditives`) REFERENCES `aditives` ( `aidx` )
);
CREATE TABLE `marks` (
	`kidx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`kname`	TEXT NOT NULL UNIQUE,
	`kdesc`	TEXT,
	`kcode`	TEXT,
	`kphone`	TEXT,
	`kmovile`	TEXT,
	`kemail`	TEXT,
	`kweb`	TEXT,
	`kaddress`	TEXT);
CREATE TABLE `inputs` (
	`iidx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`iname`	TEXT,
	`imark`	INTEGER,
	`isupplier`	INTEGER,
	`icode`	TEXT,
	`iqty`	REAL,
	`iprice`	REAL,
	`idate`	TEXT,
	`iremark`	INTEGER,
	FOREIGN KEY(`imark`) REFERENCES `marks`(`kidx`),
	FOREIGN KEY(`isupplier`) REFERENCES `suppliers`(`fidx`),
	FOREIGN KEY(`iremark`) REFERENCES `remarks`(`nidx`)
);
CREATE TABLE `harvests` (
	`ridx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`rname`	TEXT,
	`rvariety`	INTEGER,
	`rdate`	TEXT,
	`rqty`	REAL,
	`ritems`	INTEGER,
	FOREIGN KEY(`rvariety`) REFERENCES `varietas` ( `vidx` )
);
CREATE TABLE `favorables` (
	`xidx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`xplant`	INTEGER,
	`xfav`	INTEGER,
	`xremark`	TEXT,
	FOREIGN KEY(`xplant`) REFERENCES `species`(`sidx`),
	FOREIGN KEY(`xfav`) REFERENCES `species` ( `sidx` )
);
CREATE TABLE `eventsclass` (
	`cidx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`cname`	TEXT NOT NULL UNIQUE
);
CREATE TABLE `events` (
	`eidx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`ekind`	INTEGER,
	`edate`	TEXT,
	`eplant`	INTEGER,
	FOREIGN KEY(`ekind`) REFERENCES `eventsclass`(`cidx`),
	FOREIGN KEY(`eplant`) REFERENCES `plants` ( `pidx` )
);
CREATE TABLE `bioclass` (
	`bidx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`bname`	TEXT NOT NULL UNIQUE,
	`bdesc`	TEXT
);
CREATE TABLE `aditives` (
	`aidx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`aname`	TEXT NOT NULL UNIQUE
);
CREATE VIEW "view_varietas" AS select
vidx, 
vname, 
vnik, 
sname AS vspecie, 
vcode, 
vseeding, 
vtransplanting, 
vharvest, 
vseeding2, 
vtransplanting2, 
vharvest2, 
vwater, 
vremark, 
vprice, 
vdesc
from varietas left outer join species on vspecie=sidx
order by vspecie;
CREATE VIEW "view_suppliers" AS select
fidx,
fname,
fphone,
fmovile,
femail,
fweb,
faddress

from suppliers;
CREATE VIEW "view_species" AS select
sidx,
ifnull(sdesc ,'') || ifnull(' ['||sname || ']','') as sname,
sdesc,
scode,
sremark
from species;
CREATE VIEW "view_sowingclass" AS
select
 gidx,
 gname
 
 from sowingclass
  order by gname;
CREATE VIEW "view_sowing" AS
select
widx,
vname AS wseed,
dbatch AS wdbatch,
kname AS wkmark,
wseedqty,
wsuccessful,
tname AS wplot,
gname AS wmethod,
aname AS waditives,
wdate

from sowing

left join seeds on wseed=didx
left join varietas on dvariety=vidx
left join marks on dmark=kidx
left join plots on wplot=tidx
left join sowingclass on wmethod=gidx
left join aditives on waditives=aidx
order by wdate desc;
CREATE VIEW "view_seeds" AS 
 select
 didx,
 lower(ifnull(sdesc || '.','') || ifnull(vnik || '.','') || ifnull(kname || '.','') || ifnull(ddate,'')) AS dname,
 vname AS dvariety,
 vdesc AS dvdesc,
 vidx AS dvidx,
 sname AS dspecie,
 sidx AS dsidx,
 dbatch,
 kname AS dmark,
 fname AS dsupplier,
 bname AS dbioclass,
 dqty,
 dqty - (ifnull(wseedqty,0)) AS davailable,
 dprice,
 ddate,
 vseeding AS  dseeding,
 vtransplanting AS dtransplanting,
 vharvest AS dharvest,
 nname AS dremark,
 dgermtemp,
 dgermdays,
 dframe
 from seeds 
 left join varietas on dvariety=vidx
 left join species on vspecie=sidx
 left join marks on dmark=kidx
 left join suppliers on dsupplier=fidx
 left join bioclass on dbioclass=bidx
 left join remarks on dremark=nidx
 left join sowing on didx=wseed
 order by dvariety;
CREATE VIEW "view_schedule" AS

select
vname AS uvarietas, 
vseeding as useeding, 
vtransplanting as utransplanting, 
vharvest as uharvest
from varietas
where vname <> 'None' and vseeding not Null

union

select
vname AS uvarietas, 
vseeding2 as useeding, 
vtransplanting2 as utransplanting, 
vharvest2 as uharvest
from varietas
where vname <> 'None' and vseeding2 not Null

order by useeding asc;
CREATE VIEW "view_remarks" AS select
nidx,
nname

from remarks;
CREATE VIEW "view_plots" AS select
 tidx,
 tname,
 tform,
 qname AS tclass,
 tdate,
 tsurface
 
 from plots
 left join plotsclass on tclass=qidx 
 order by tname;
CREATE VIEW "view_plants" AS select
 pidx,
  lower(ifnull(sdesc || '.','') || ifnull(vnik || '.','') || ifnull(kname || '.','') || ifnull(pdate,'')) AS pname,
 vname AS pvariety,
 vdesc AS pvdesc,
 vidx AS pvidx,
 sname AS pspecie,
 sidx AS psidx,
 pbatch,
 kname AS pmark,
 fname AS psupplier,
 bname AS pbioclass,
 pqty,
 pprice,
 pdate,
 nname AS premark,
 pframe 
 from plants
 left join varietas on pvariety=vidx 
 left join species on vspecie=sidx 
 left join marks on pmark=kidx 
 left join suppliers on psupplier=fidx 
 left join bioclass on pbioclass=bidx 
 left join remarks on premark=nidx 
 left join sowing on pidx=wseed 
 order by pvariety;
CREATE VIEW "view_plantingclass" AS select
jidx,
jname
 
from plantingclass
order by jname;
CREATE VIEW "view_planting" AS select
hidx,
vname AS hplant,
pbatch AS hpbatch,
kname AS hkmark,
hplantqty,
hsuccessful,
tname AS hplot,
jname AS hmethod,
aname AS haditives,
hdate

from planting

left join plants on hplant=pidx
left join varietas on pvariety=vidx
left join marks on pmark=kidx
left join plots on hplot=tidx
left join plantingclass on hmethod=jidx
left join aditives on haditives=aidx
order by hdate desc;
CREATE VIEW "view_marks" AS select
kidx,
kname,
kdesc,
kcode,
kphone,
kmovile,
kemail,
kweb,
kaddress

from marks;
CREATE VIEW "view_inputs" AS
select
iidx,
iname,
kname AS imark,
fname AS isupplier,
icode,
iqty,
iprice,
idate,
nname AS iremark

from inputs

left join marks on imark=kidx
left join suppliers on isupplier=fidx
left join remarks on iremark=nidx

order by isupplier,idate;
CREATE VIEW "view_harvestsresume" AS select
sdesc AS rspecie,
total( rqty  ) AS rqtykg,
total( rqty * vprice ) AS ramount

from harvests

left join varietas on rvariety=vidx
left join species on vspecie=sidx
group by vspecie;
CREATE VIEW "view_harvests" AS select
ridx,
rname,
vname AS rvaiety,
sname AS rspecie,
rdate,
rqty,
round(total( rqty * vprice ),2) AS ramount,
ritems from harvests
left join varietas on rvariety=vidx
left join species on vspecie=sidx
group by rdate,rvariety;
CREATE VIEW "view_favorables" AS select
xidx,
sidx1 AS xidx1,
sname1 AS xplantsp,
sdesc1 AS xplantnm,
sremark1 AS xplantrk,
sidx2 AS xidx2,
sname2 AS xfavsp,
sdesc2 AS xfavnm,
xremark AS xfavrk

from favorables

left join aux_species1 on xplant=sidx1
left join aux_species2 on xfav=sidx2

order by xplantnm,xfavnm asc;
CREATE VIEW "view_expenses" AS
select
round(total(iprice),2) AS expense

from view_inputs;
CREATE VIEW "view_earnings" AS
select round(total(ramount),2) AS earning
from view_harvests;
CREATE VIEW "view_bioclass" AS
select
bidx,
bname,
bdesc
from bioclass;
CREATE VIEW "view_aditives" AS
select
aidx,
aname
from aditives;
CREATE VIEW "aux_species2" AS select
sidx AS sidx2,
sname AS sname2,
sdesc AS sdesc2,
sremark AS sremark2
from species
order by sname2 asc;
CREATE VIEW "aux_species1" AS select
sidx AS sidx1,
sname AS sname1,
sdesc AS sdesc1,
sremark AS sremark1
from species
order by sname1 asc;
COMMIT;
