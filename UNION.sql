-- 초기화

DROP TABLE ACADEMY_A;
DROP TABLE ACADEMY_B;

-- A 학원 수강신청 ==============================================================

CREATE TABLE ACADEMY_A (
    STUDENT_NO NUMBER PRIMARY KEY,
    STUDENT_NAME VARCHAR2(20) NOT NULL
);

INSERT INTO ACADEMY_A VALUES (1001, '정소화');
INSERT INTO ACADEMY_A VALUES (1002, '김용욱');
INSERT INTO ACADEMY_A VALUES (1003, '고명석');
INSERT INTO ACADEMY_A VALUES (1004, '김연아');

-- B 학원 수강신청 ==============================================================

CREATE TABLE ACADEMY_B (
    STUDENT_NO NUMBER PRIMARY KEY,
    STUDENT_NAME VARCHAR2(20) NOT NULL
);

INSERT INTO ACADEMY_B VALUES (1005, '김태환');
INSERT INTO ACADEMY_B VALUES (1006, '이윤아');
INSERT INTO ACADEMY_B VALUES (1003, '고명석');
INSERT INTO ACADEMY_B VALUES (1004, '김연아');

-- UNION =======================================================================

SELECT * FROM ACADEMY_A
UNION -- 중복제거
SELECT * FROM ACADEMY_B;

-- INTERSECT ===================================================================

SELECT * FROM ACADEMY_A
INTERSECT -- 중복제거
SELECT * FROM ACADEMY_B;

-- MINUS =======================================================================

SELECT * FROM ACADEMY_A
MINUS -- 중복제거
SELECT * FROM ACADEMY_B;
