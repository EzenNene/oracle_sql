-- �ʱ�ȭ

DROP TABLE ACADEMY_A;
DROP TABLE ACADEMY_B;

-- A �п� ������û ==============================================================

CREATE TABLE ACADEMY_A (
    STUDENT_NO NUMBER PRIMARY KEY,
    STUDENT_NAME VARCHAR2(20) NOT NULL
);

INSERT INTO ACADEMY_A VALUES (1001, '����ȭ');
INSERT INTO ACADEMY_A VALUES (1002, '����');
INSERT INTO ACADEMY_A VALUES (1003, '���');
INSERT INTO ACADEMY_A VALUES (1004, '�迬��');

-- B �п� ������û ==============================================================

CREATE TABLE ACADEMY_B (
    STUDENT_NO NUMBER PRIMARY KEY,
    STUDENT_NAME VARCHAR2(20) NOT NULL
);

INSERT INTO ACADEMY_B VALUES (1005, '����ȯ');
INSERT INTO ACADEMY_B VALUES (1006, '������');
INSERT INTO ACADEMY_B VALUES (1003, '���');
INSERT INTO ACADEMY_B VALUES (1004, '�迬��');

-- UNION =======================================================================

SELECT * FROM ACADEMY_A
UNION -- �ߺ�����
SELECT * FROM ACADEMY_B;

-- INTERSECT ===================================================================

SELECT * FROM ACADEMY_A
INTERSECT -- �ߺ�����
SELECT * FROM ACADEMY_B;

-- MINUS =======================================================================

SELECT * FROM ACADEMY_A
MINUS -- �ߺ�����
SELECT * FROM ACADEMY_B;
