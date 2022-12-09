/*
--------------------------------------------------------------------------------
INSERT 문

INSERT INTO 테이블이름(필드이름1, 필드이름2, ...) VALUES (데이터값1, 데이터값2, ...)

[아래에 해당하는 필드는 INSERT 할 때 생략가능]
1. NULL을 저장할 수 있도록 설정된 필드   
2. DEFAULT 제약 조건이 설정된 필드
3. AUTO_INCREMENT (자동으로 증가 등)키워드가 설정된 필드
--------------------------------------------------------------------------------
SELECT 문

SELECT 필드이름
FROM 테이블이름
WHERE 조건

SELECT *
FROM 테이블이름 // 해당 테이블의 모든 필드 선택
--------------------------------------------------------------------------------



*/



CREATE TABLE PERSON (
    PER_NUM NUMBER PRIMARY KEY,
    PER_NAME VARCHAR2(30)
);

INSERT INTO PERSON VALUES (1,'홍길동');
INSERT INTO PERSON VALUES (2,'임꺽정');
INSERT INTO PERSON VALUES (3,'김유신');

CREATE TABLE FOOD (
    FOOD_NUM NUMBER PRIMARY KEY,
    FOOD_NAME VARCHAR2(30),
    FOOD_DATE DATE NOT NULL
);

INSERT INTO FOOD VALUES (1001, '사과', TO_DATE('2023-10-01', 'YYYY-MM-DD'));
INSERT INTO FOOD VALUES (1002, '바나나', TO_DATE('2023-10-02', 'YYYY-MM-DD'));
INSERT INTO FOOD VALUES (1003, '키위', TO_DATE('2023-10-03', 'YYYY-MM-DD'));
INSERT INTO FOOD VALUES (1004, '망고', TO_DATE('2023-10-04', 'YYYY-MM-DD'));

CREATE TABLE FOOD2 (
    FOOD_NUM NUMBER PRIMARY KEY,
    FOOD_NAME VARCHAR2(30),
    FOOD_DATE DATE NOT NULL
);

INSERT INTO FOOD2 VALUES (1003, '키위', TO_DATE('2023-10-05', 'YYYY-MM-DD'));
INSERT INTO FOOD2 VALUES (1004, '망고', TO_DATE('2023-10-06', 'YYYY-MM-DD'));
INSERT INTO FOOD2 VALUES (1005, '배', TO_DATE('2023-10-07', 'YYYY-MM-DD'));
INSERT INTO FOOD2 VALUES (1006, '두리안', TO_DATE('2023-10-08', 'YYYY-MM-DD'));


-- JOIN 연습
SELECT *
FROM FOOD T1
RIGHT JOIN FOOD2 T2
ON(T1.FOOD_NAME = T2.FOOD_NAME);

-- 서브쿼리 연습
-- 다른 쿼리 내부에 포함되어 있는 SELECT 문
SELECT *
FROM FOOD T1, -- 여기까지 외부쿼리
    (SELECT FOOD_NAME,FOOD_DATE
    FROM FOOD2) T2
WHERE T1.FOOD_NAME = T2.FOOD_NAME;

-------------------------------
DROP TABLE PERSON;
DROP TABLE FOOD;
DROP TABLE FOOD2;

SELECT * FROM PERSON;
SELECT * FROM FOOD;
SELECT * FROM FOOD2;
-------------------------------



