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

select max(resv_no) + 1 from RESERVAION_TBL_202305

select rm_number from ROOM_TBL_202305 R1
join RESERVAION_TBL_202305 R2 on R1.rm_number = R2.resv_rm_number
group by rm_number
order by rm_number desc;


select rm_number from ROOM_TBL_202305
where rm_number not in (select rm_number from ROOM_TBL_202305 R1
join RESERVAION_TBL_202305 R2 on R1.rm_number = R2.resv_rm_number
group by rm_number)


SELECT 
    r.resv_no AS "예약번호", 
    r.resv_name AS "예약자 성명", 
    SUBSTR(r.resv_phone, 1, 3) || '-' || 
    SUBSTR(r.resv_phone, 4, 4) || '-' || 
    SUBSTR(r.resv_phone, 8, 4) AS "예약자전화번호",
    SUBSTR(r.resv_from_ymd, 1, 4) || '/' ||
    SUBSTR(r.resv_from_ymd, 5, 2) || '/' ||
    SUBSTR(r.resv_from_ymd, 7, 2) || '~' ||
    SUBSTR(r.resv_to_ymd, 1, 4) || '/' ||
    SUBSTR(r.resv_to_ymd, 5, 2) || '/' ||
    SUBSTR(r.resv_to_ymd, 7, 2) AS "예약기간",
    r.resv_rm_number,
    CASE rt.rm_type
        WHEN 'a' THEN '2인실'
        WHEN 'b' THEN '4인실'
        ELSE '기타'
    END AS "객실유형"
FROM 
    RESERVAION_TBL_202305 r
JOIN 
    ROOM_TBL_202305 rt ON r.resv_rm_number = rt.rm_number;
    
 

