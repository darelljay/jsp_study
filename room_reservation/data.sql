create table ROOM_TBL_202305(
	rm_number number(3) primary key,
	rm_type varchar2(2)
)

drop table ROOM_TBL_202305

insert all 
into ROOM_TBL_202305 (rm_number,rm_type) values(101,'a')
into ROOM_TBL_202305 (rm_number,rm_type) values(102,'a')
into ROOM_TBL_202305 (rm_number,rm_type) values(103,'b')
into ROOM_TBL_202305 (rm_number,rm_type) values(104,'b')
into ROOM_TBL_202305 (rm_number,rm_type) values(201,'a')
into ROOM_TBL_202305 (rm_number,rm_type) values(202,'a')
into ROOM_TBL_202305 (rm_number,rm_type) values(203,'b')
into ROOM_TBL_202305 (rm_number,rm_type) values(204,'b')
select * from dual;

select * from ROOM_TBL_202305;


create table RESERVAION_TBL_202305(
	resv_no	varchar2(5) primary key,
	resv_name varchar2(20),
	resv_phone varchar2(11),
	resv_from_ymd varchar2(8),
	resv_to_ymd varchar2(8),
	resv_rm_number number(3)
)

insert all 
into RESERVAION_TBL_202305 (resv_no,resv_name,resv_phone,resv_from_ymd,resv_to_ymd,resv_rm_number)
values ('10001','홍길동','01011112222','20230524','20230524','101') 
into RESERVAION_TBL_202305 (resv_no,resv_name,resv_phone,resv_from_ymd,resv_to_ymd,resv_rm_number)
values ('10002','고길동','01022223333','20230524','20230524','102') 
into RESERVAION_TBL_202305 (resv_no,resv_name,resv_phone,resv_from_ymd,resv_to_ymd,resv_rm_number)
values ('10003','이갈동','01033334444','20230524','20230525','103') 
into RESERVAION_TBL_202305 (resv_no,resv_name,resv_phone,resv_from_ymd,resv_to_ymd,resv_rm_number)
values ('10004','신갈동','01044445555','20230525','20230525','104') 
into RESERVAION_TBL_202305 (resv_no,resv_name,resv_phone,resv_from_ymd,resv_to_ymd,resv_rm_number)
values ('10005','최갈동','01066667777','20230525','20230525','201')
select * from dual;


