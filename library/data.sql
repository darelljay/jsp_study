create table MEM_TBL_202205(
	id number(6) primary key,
	name varchar2(10),
	jumin varchar2(13),
	indate date,
	grade varchar2(1)
);

insert all
into MEM_TBL_202205 (id,name,jumin,indate,grade) values(100001,'김학생','0501013333333','20220301','0')
into MEM_TBL_202205 (id,name,jumin,indate,grade) values(100002,'이학생','0501014444444','20220501','1')
into MEM_TBL_202205 (id,name,jumin,indate,grade) values(100003,'최학생','0501013333333','20220301','0')
into MEM_TBL_202205 (id,name,jumin,indate,grade) values(100004,'박학생','0501013333333','20220301','0')
into MEM_TBL_202205 (id,name,jumin,indate,grade) values(100005,'정학생','0501014444444','20220301','0')
into MEM_TBL_202205 (id,name,jumin,indate,grade) values(100006,'신학생','0501013333333','20220501','1')
select * from dual;

select * from MEM_TBL_202205;

create table ATT_TBL_202205(
att_ymd varchar2(6),
att_no varchar2(3),
att_id number(6),
constraint att_pk primary key(att_ymd,att_no)
)

ALTER TABLE ATT_TBL_202205 modify att_ymd varchar2(8)

insert all 
into ATT_TBL_202205 (att_ymd,att_no,att_id) values ('20220502','001',100001)
into ATT_TBL_202205 (att_ymd,att_no,att_id) values ('20220502','002',100002)
into ATT_TBL_202205 (att_ymd,att_no,att_id) values ('20220502','003',100004)
into ATT_TBL_202205 (att_ymd,att_no,att_id) values ('20220503','001',100001)
into ATT_TBL_202205 (att_ymd,att_no,att_id) values ('20220503','002',100002)
into ATT_TBL_202205 (att_ymd,att_no,att_id) values ('20220503','003',100004)
into ATT_TBL_202205 (att_ymd,att_no,att_id) values ('20220503','004',100001)
into ATT_TBL_202205 (att_ymd,att_no,att_id) values ('20220503','005',100006)
into ATT_TBL_202205 (att_ymd,att_no,att_id) values ('20220504','001',100004)
into ATT_TBL_202205 (att_ymd,att_no,att_id) values ('20220505','001',100001)
into ATT_TBL_202205 (att_ymd,att_no,att_id) values ('20220505','002',100003)
into ATT_TBL_202205 (att_ymd,att_no,att_id) values ('20220505','003',100004)
select * from dual;

select max(id) from MEM_TBL_202205

