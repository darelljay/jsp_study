create table member_tbl_02(
 custno number (6) primary key,
 custname varchar2(20),
 phone varchar2(13),
 adress varchar2(60),
 joindate date,
 grade char(1),
 city char(2)
)

insert all 
into member_tbl_02 (custno, custname, phone, adress, joindate, grade, city) values(100001, '김햏복', '010-1111-2222', '서울 동대문구 휘경1동', '2015-12-02', 'A', '01')
into member_tbl_02 (custno, custname, phone, adress, joindate, grade, city) values(100002, '이춘복', '010-1111-3333', '서울 동대문구 휘경2동', '2015-12-06', 'B', '01')
into member_tbl_02 (custno, custname, phone, adress, joindate, grade, city) values(100003, '장믿음', '010-1111-4444', '울릉군 울릉읍 독도 1리', '2015-10-01', 'B', '30')
into member_tbl_02 (custno, custname, phone, adress, joindate, grade, city) values(100004, '최사랑', '010-1111-5555', '울릉군 울릉읍 독도 2리', '2015-11-13', 'A', '30')
into member_tbl_02 (custno, custname, phone, adress, joindate, grade, city) values(100005, '잔평화', '010-1111-6666', '제주도 제주시 외나무골', '2015-12-25', 'B', '60')
into member_tbl_02 (custno, custname, phone, adress, joindate, grade, city) values(100006, '차공단', '010-1111-7777', '제주도 제주시 김나무골', '2015-12-11', 'C', '60')
select * from dual;

create table money_tbl_02(
custno number(6),
salenol number(8),
pcost number(8),
amount number(4),
price number(8),
pcode varchar(4),
sdate date,
constraint money_tbl_pk primary key (custno,salenol)
)


insert all 
into money_tbl_02 (custno,salenol,pcost,amount,price,pcode,sdate) values(100001,20160001,500,5,2500,'A001','2016-01-01')
into money_tbl_02 (custno,salenol,pcost,amount,price,pcode,sdate) values(100001,20160002,1000,4,4000,'A002','2016-01-01')
into money_tbl_02 (custno,salenol,pcost,amount,price,pcode,sdate) values(100001,20160003,500,3,1500,'A008','2016-01-01')
into money_tbl_02 (custno,salenol,pcost,amount,price,pcode,sdate) values(100002,20160004,2000,1,2000,'A004','2016-01-02')
into money_tbl_02 (custno,salenol,pcost,amount,price,pcode,sdate) values(100002,20160005,500,1,500,'A001','2016-01-03')
into money_tbl_02 (custno,salenol,pcost,amount,price,pcode,sdate) values(100003,20160006,1500,2,3000,'A003','2016-01-03')
into money_tbl_02 (custno,salenol,pcost,amount,price,pcode,sdate) values(100004,20160007,500,2,1000,'A001','2016-01-04')
into money_tbl_02 (custno,salenol,pcost,amount,price,pcode,sdate) values(100004,20160008,300,1,300,'A005','2016-01-04')
into money_tbl_02 (custno,salenol,pcost,amount,price,pcode,sdate) values(100004,20160009,600,1,600,'A006','2016-01-04')
into money_tbl_02 (custno,salenol,pcost,amount,price,pcode,sdate) values(100004,20160010,5000,1,3000,'A007','2016-01-06')
select * from dual

select* from member_tbl_02;

select TO_CHAR(sysdate,'yyyymmdd') from dual;
SELECT custno,custname,phone,adress,TO_CHAR(joindate,'yyyy-mm-dd'),grade,city from member_tbl_02
SELECT m.custno, m.custname, m.grade, SUM(j.price) AS total_price
FROM member_tbl_02 m
JOIN money_tbl_02 j ON m.custno = j.custno
GROUP BY m.custno, m.custname, m.grade
ORDER BY total_price DESC; 