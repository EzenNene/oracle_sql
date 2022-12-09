/*
--------------------------------------------------------------------------------
INSERT ��

INSERT INTO ���̺��̸�(�ʵ��̸�1, �ʵ��̸�2, ...) VALUES (�����Ͱ�1, �����Ͱ�2, ...)

[�Ʒ��� �ش��ϴ� �ʵ�� INSERT �� �� ��������]
1. NULL�� ������ �� �ֵ��� ������ �ʵ�   
2. DEFAULT ���� ������ ������ �ʵ�
3. AUTO_INCREMENT (�ڵ����� ���� ��)Ű���尡 ������ �ʵ�
--------------------------------------------------------------------------------
SELECT ��

SELECT �ʵ��̸�
FROM ���̺��̸�
WHERE ����

SELECT *
FROM ���̺��̸� // �ش� ���̺��� ��� �ʵ� ����
--------------------------------------------------------------------------------



*/



CREATE TABLE PERSON (
    PER_NUM NUMBER PRIMARY KEY,
    PER_NAME VARCHAR2(30)
);

INSERT INTO PERSON VALUES (1,'ȫ�浿');
INSERT INTO PERSON VALUES (2,'�Ӳ���');
INSERT INTO PERSON VALUES (3,'������');

CREATE TABLE FOOD (
    FOOD_NUM NUMBER PRIMARY KEY,
    FOOD_NAME VARCHAR2(30),
    FOOD_DATE DATE NOT NULL
);

INSERT INTO FOOD VALUES (1001, '���', TO_DATE('2023-10-01', 'YYYY-MM-DD'));
INSERT INTO FOOD VALUES (1002, '�ٳ���', TO_DATE('2023-10-02', 'YYYY-MM-DD'));
INSERT INTO FOOD VALUES (1003, 'Ű��', TO_DATE('2023-10-03', 'YYYY-MM-DD'));
INSERT INTO FOOD VALUES (1004, '����', TO_DATE('2023-10-04', 'YYYY-MM-DD'));

CREATE TABLE FOOD2 (
    FOOD_NUM NUMBER PRIMARY KEY,
    FOOD_NAME VARCHAR2(30),
    FOOD_DATE DATE NOT NULL
);

INSERT INTO FOOD2 VALUES (1003, 'Ű��', TO_DATE('2023-10-05', 'YYYY-MM-DD'));
INSERT INTO FOOD2 VALUES (1004, '����', TO_DATE('2023-10-06', 'YYYY-MM-DD'));
INSERT INTO FOOD2 VALUES (1005, '��', TO_DATE('2023-10-07', 'YYYY-MM-DD'));
INSERT INTO FOOD2 VALUES (1006, '�θ���', TO_DATE('2023-10-08', 'YYYY-MM-DD'));


-- JOIN ����
SELECT *
FROM FOOD T1
RIGHT JOIN FOOD2 T2
ON(T1.FOOD_NAME = T2.FOOD_NAME);

-- �������� ����
-- �ٸ� ���� ���ο� ���ԵǾ� �ִ� SELECT ��
SELECT *
FROM FOOD T1, -- ������� �ܺ�����
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



