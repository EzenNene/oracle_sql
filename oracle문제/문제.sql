--����1. emp ���̺��� �����ȣ, ����̸�, ������ ����Ͻÿ�.

SELECT EMPNO, ENAME, SAL FROM EMP;

--����2. emp ���̺��� �����ȣ, ����̸�, ����, ������ ���ϰ� ���� �÷����� �����ȣ, ����̸�, ����, �������� ����Ͻÿ�

SELECT EMPNO AS �����ȣ, ENAME AS ����̸�, SAL AS �޿�, SAL*12 AS ����
FROM EMP;

--����3. employees ���̺��� ��� �������� �޿��� $300���� ��Ű�� ���ؼ� ���� �����ڸ� ����ϰ� ����� �̸��� SALARY, SALARY+300�� ��� �մϴ�.

SELECT last_name || ' ' || first_name, SALARY, SALARY+300
FROM EMPLOYEES;

--����4. EMPLOYEES ���̺��� �̸�(last_name + first_name)�� ������ "KING: 1 Year salary = 60000" �������� ����Ͽ���. 

SELECT last_name||' 1 YEAR SALARY = '||SALARY*12
FROM EMPLOYEES;

--����5. EMPLOYEES ���̺��� �Ի����ڰ� 1995�� 1�� 1�� ���Ŀ� �Ի��� ����� ������ �����ȣ, ����, ������, �޿�, �Ի�����, �μ���ȣ�� ����϶�

SELECT EMPLOYEE_ID, last_name || ' ' || first_name, JOB_ID, SALARY, HIRE_DATE, DEPARTMENT_ID
FROM EMPLOYEES
WHERE HIRE_DATE > '1995/01/01';

--����6. EMPLOYEES ���̺��� �޿��� 3000���� 5000������ ������ ����, ������, �޿�, �μ���ȣ�� ����϶�.

SELECT last_name || ' ' || first_name, JOB_ID, SALARY, DEPARTMENT_ID
FROM EMPLOYEES
WHERE SALARY >3000 AND SALARY < 5000;

--����7. EMPLOYEES ���̺��� �����ȣ�� 144, 176, 200 �� ����� ������ �����ȣ, ����, ������, �޿�, �Ի����ڸ� ����϶�.

SELECT EMPLOYEE_ID, last_name || ' ' || first_name, JOB_ID, SALARY, HIRE_DATE
FROM EMPLOYEES
WHERE EMPLOYEE_ID IN(144, 176, 200);

--����8.emp ���̺� ���� ������ SALESMAN �Ǵ� MANAGER�̸鼭 �޿��� 1,600, 2,975 �Ǵ� 2,850�� �ƴ� ��� ����� �̸�, ���� �� �޿��� ǥ���Ͻÿ�.

SELECT ENAME, JOB, SAL
FROM EMP
WHERE SAL NOT IN(1600, 2975, 2850);
 
--����9.EMPLOYEES ���̺��� �μ����� �ο���, ��� �޿�, �����޿�, �ְ�޿�, �޿��� ���� ���Ͽ� ����϶�.

SELECT * FROM EMPLOYEES;

SELECT 
DEPARTMENT_ID AS �μ���, COUNT(*) AS �ο���,
ROUND(AVG(SALARY),3)
,MIN(SALARY), MAX(SALARY), SUM(SALARY) 
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
ORDER BY DEPARTMENT_ID DESC;

--���� 10. EMPLOYEES ���̺��� �μ� �ο��� 4���� ���� �μ��� 
--�μ���ȣ, �ο���, �޿��� ���� ���Ͽ� ����Ͽ���(GROUP BY, HAVING)

SELECT 
DEPARTMENT_ID AS �μ���, COUNT(*) AS �ο���,
ROUND(AVG(SALARY),3)
,MIN(SALARY), MAX(SALARY), SUM(SALARY) 
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID HAVING COUNT(*) > 4
ORDER BY DEPARTMENT_ID DESC;

--���� 11. EMPLOYEES ���̺��� ��ü ������ 10000�� �ʰ��ϴ� �� ������ ���ؼ� ������ ���޿� �հ踦 ����϶�. 
--�� job_id�� 'SA '�� �����ϴ� ������ �����ϰ� �� �޿� �հ�� ����(��������) �϶�. 

SELECT JOB_ID, SALARY
FROM EMPLOYEES
WHERE SALARY > 10000 AND JOB_ID NOT LIKE 'SA%'
ORDER BY SALARY DESC;

--����12. emp���̺��� ����̸� �� A�� ���Ե� ����̸��� ���ϰ� �� �̸� �� �տ��� 3�ڸ� �����Ͽ� ���

SELECT SUBSTR(ENAME,1,3)
FROM EMP
WHERE ENAME LIKE '%A%';

--���⼭ ���� join����

--����13. ��� ����� �̸�, �μ���ȣ, �μ��̸��� ǥ���Ͻÿ�. (emp, dept)

SELECT T1.ENAME, T2.DEPTNO,DNAME
FROM EMP T1, DEPT T2;

--����14. ������ MANAGER�� ����� ������ �̸�, ����, �μ���, �ٹ��� ������ ����Ͻÿ�. ( emp, dept)

SELECT T1.ENAME, T1.JOB, T2.DNAME, T2.LOC
FROM EMP T1, DEPT T2
WHERE T1.JOB = 'MANAGER';

--����15. Ŀ�̼�(emp���̺��� comm �÷��̿�)�� �ް� �޿��� 1,600�̻��� ����� ����̸�, �μ���, �ٹ����� ����Ͻÿ�.( emp, dept)

SELECT T1.ENAME, T2.DNAME, T2.LOC
FROM EMP T1, DEPT T2
WHERE T1.SAL + T1.COMM >= 1600;

--����16. �ٹ����� CHICAGO�� ��� ����� �̸�,����,�μ���ȣ �� �μ��̸��� ǥ���Ͻÿ�. ( emp, dept)

SELECT T1.ENAME, T1.JOB, T2.DEPTNO, T2.DNAME
FROM EMP T1, DEPT T2
WHERE T2.LOC = 'CHICAGO';

--���⼭ ���� �������� ����

--����17. emp���̺� ���� �����ȣ�� 7900�� ����� ���� ��¥�� �Ի��� ����� �̸��� �Ի����� ����Ͻÿ�.

SELECT T1.ENAME, T1.HIREDATE
FROM EMP T1
WHERE T1.HIREDATE = (   SELECT T1.HIREDATE
                        FROM EMP T1
                        WHERE T1.EMPNO = 7900);

SELECT * FROM EMP; 
SELECT * FROM EMPLOYEES; 

--����18. emp���̺� ���� ���ӻ��(mgr)�� KING�� ��� ����� �̸��� �޿��� ����Ͻÿ�.

SELECT T1.ENAME, SAL
FROM EMP T1
WHERE T1.MGR =  (   SELECT T1.MGR
                    FROM EMP T1
                    WHERE T1.MGR = 7900);

--����19. EMPLOYEES ���̺��� (�޿��� ���)���� ���� ����� ������ �����ȣ,�̸�,������,�޿�,�μ���ȣ�� ����Ͽ���

SELECT T1.EMPLOYEE_ID, T1.last_name || ' ' || first_name, T1.JOB_ID, T1.SALARY, T1.DEPARTMENT_ID
FROM EMPLOYEES T1
WHERE T1.SALARY

--����20. EMPLOYEES ���̺��� (Kochhar�� �޿�)���� ���� ����� ������ �����ȣ,�̸�,������,�޿��� ����϶�.

--���� 21. emp���̺� ���� (BLAKE�� ���� �μ�)�� �ִ� ������� �̸��� �Ի����� ���ϴµ� BLAKE�� �����ϰ� ����Ͻÿ�.(BLAKE�� �������� �� ����


