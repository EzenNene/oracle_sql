CREATE OR REPLACE VIEW ACADEMY_ALL AS
SELECT * FROM ACADEMY_A;

--SELECT * FROM ACADEMY_ALL WHERE STUDENT_NO = 1001;

CREATE OR REPLACE VIEW ACADEMY_STUDENT_NAME AS
SELECT STUDENT_NO FROM ACADEMY_A;

SELECT * FROM ACADEMY_all;
SELECT * FROM ACADEMY_a;

INSERT INTO ACADEMY_all VALUES(1005, '강희재');

CREATE OR REPLACE VIEW ACADEMY_JOIN AS
SELECT T1.STUDENT_NO, T1.STUDENT_NAME 
FROM ACADEMY_A T1, ACADEMY_B T2
WHERE T1.STUDENT_NO = T2.STUDENT_NO;

DROP VIEW ACADEMY_JOIN;


create sequence emp_seq
    increment by 1
    start with 1
    minvalue 1
    maxvalue 9999
    nocycle
    nocache
    noorder;

select emp_seq.nextval -- 다음 시퀀스 값
from dual;

select emp_seq.currval -- 현재 시퀀스 값
from dual;

drop sequence emp_seq;

insert into emp values(emp_seq.nextval, '둘리', 10);

select * from emp;

alter sequence emp_seq increment by 4;
select emp_seq.nextval -- 다음 시퀀스 값
from dual;
alter sequence emp_seq increment by 1;

truncate table emp; -- 테이블 안의 데이터 값 지움


