/****** where �� ��� �� ������ NOT ******/
--26. `DEPT_CODE`�� 'D5'�� �ƴ� ����� �̸��� �μ� �ڵ�
SELECT EMP_NAME, DEPT_CODE
FROM EMPLOYEE
WHERE DEPT_CODE != 'D5';

--27. `SALARY`�� 3000000���� ũ�� ���� ����� �̸��� �޿�
SELECT EMP_NAME, SALARY
FROM EMPLOYEE
WHERE SALARY <= 3000000;
--28. `JOB_CODE`�� 'J3'�� �ƴ� ����� �̸��� ���� �ڵ�
SELECT EMP_NAME, JOB_CODE
FROM EMPLOYEE
WHERE JOB_CODE != 'J3';

--29. `BONUS`�� 0.1�� �ƴ� ����� �̸��� ���ʽ�
SELECT EMP_NAME, BONUS
FROM EMPLOYEE
WHERE BONUS != 0.1;
-- ������ ��� '' ������� �ʾƵ� ����� ����

--30. `MANAGER_ID`�� 200�� �ƴ� ����� �̸��� �Ŵ��� ID
SELECT EMP_NAME, MANAGER_ID
FROM EMPLOYEE
WHERE MANAGER_ID != 200;

/****** NULL ���ϱ� IS NULL ******/
--31. `EMAIL`�� ���� ����� �̸��� �̸���
SELECT EMP_NAME, EMAIL
FROM EMPLOYEE
WHERE EMAIL IS NULL;
-- �̸��� ĭ�� �̸����� ���� ����� ��ȸ
--> �����ȸ�� �ȵȴٸ� ��� �̸����� �ۼ����� ��

--32. `PHONE`�� ���� ����� �̸��� ��ȭ��ȣ
SELECT EMP_NAME, PHONE
FROM EMPLOYEE
WHERE PHONE IS NULL;
--> �ڵ��� ��ȣ�� �ۼ����� ���� ����� ����

--33. `BONUS`�� ���� ����� �̸��� ���ʽ�
SELECT EMP_NAME, BONUS
FROM EMPLOYEE
WHERE BONUS IS NULL;

--34. `MANAGER_ID`�� ���� ����� �̸��� �Ŵ��� ID
SELECT EMP_NAME, MANAGER_ID
FROM EMPLOYEE
WHERE MANAGER_ID IS NULL;

--35. `ENT_DATE`�� ���� ����� �̸��� ������
SELECT EMP_NAME, ENT_DATE
FROM EMPLOYEE
WHERE ENT_DATE IS NULL;

/****** NULL ���ϱ� IS NOT NULL ******/
--36. `EMAIL`�� �ִ� ����� �̸��� �̸���
SELECT EMP_NAME, EMAIL
FROM EMPLOYEE
WHERE EMAIL IS NOT NULL;
--> �̸���ĭ�� �̸����� ��� �ۼ��� ����鸸 ��ȸ

--37. `PHONE`�� �ִ� ����� �̸��� ��ȭ��ȣ
SELECT EMP_NAME, PHONE
FROM EMPLOYEE
WHERE PHONE IS NOT NULL;
--38. `BONUS`�� �ִ� ����� �̸��� ���ʽ�
SELECT EMP_NAME, BONUS
FROM EMPLOYEE
WHERE BONUS IS NOT NULL;
--> ���ʽ��� ���� ����� ��ȸ

--39. `MANAGER_ID`�� �ִ� ����� �̸��� �Ŵ��� ID
SELECT EMP_NAME, MANAGER_ID
FROM EMPLOYEE
WHERE MANAGER_ID IS NOT NULL;

--40. `ENT_DATE`�� �ִ� ����� �̸��� ������
SELECT EMP_NAME, ENT_DATE
FROM EMPLOYEE
WHERE ENT_DATE IS NOT NULL;

/****** BETWEEN  AND ������ ��� ******/
--41. `SALARY`�� 2000000���� 3000000 ������ ����� �̸��� �޿�
SELECT EMP_NAME, SALARY
FROM EMPLOYEE
WHERE SALARY BETWEEN 2000000 AND 3000000;

--42. `HIRE_DATE`�� 2000�� 1�� 1�Ϻ��� 2010�� 12�� 31�� ������ ����� �̸��� �Ի���
SELECT EMP_NAME, HIRE_DATE
FROM EMPLOYEE
WHERE HIRE_DATE 
BETWEEN TO_DATE('2000-01-01', 'YYYY-MM-DD') 
AND TO_DATE ('2010-12-31','YYYY-MM-DD');

--43. `EMP_ID`�� 210���� 220 ������ ����� �̸��� ID
SELECT EMP_NAME, EMP_ID
FROM EMPLOYEE
WHERE EMP_ID BETWEEN 210 AND 220;

--44. `BONUS`�� 0.1���� 0.3 ������ ����� �̸��� ���ʽ�
SELECT EMP_NAME, BONUS
FROM EMPLOYEE
WHERE BONUS BETWEEN 0.1 AND 0.3;


--45. `SAL_LEVEL`�� 'S3'���� 'S5' ������ ����� �̸��� �޿� ����
SELECT EMP_NAME, SAL_LEVEL
FROM EMPLOYEE
WHERE SAL_LEVEL BETWEEN 'S3' AND 'S5';



/****** NOT BETWEEN ������ ��� ******/
--46. `SALARY`�� 2000000���� 3000000 ���̰� �ƴ� ����� �̸��� �޿�
SELECT EMP_NAME, SALARY
FROM EMPLOYEE
WHERE SALARY NOT BETWEEN 2000000 AND 3000000;
--47. `HIRE_DATE`�� 2000�� 1�� 1�Ϻ��� 2010�� 12�� 31�� ���̰� �ƴ� ����� �̸��� �Ի���
-->TO_DATE
SELECT EMP_NAME, HIRE_DATE
FROM EMPLOYEE
WHERE HIRE_DATE NOT BETWEEN TO_DATE('2000-01-01', 'YYYY-MM-DD')
AND TO_DATE('2010-12-31', 'YYYY-MM-DD');

--48. `EMP_ID`�� 210���� 220 ���̰� �ƴ� ����� �̸��� ID
SELECT EMP_NAME, EMP_ID
FROM EMPLOYEE
WHERE EMP_ID NOT BETWEEN 210 AND 220;

--49. `BONUS`�� 0.1���� 0.3 ���̰� �ƴ� ����� �̸��� ���ʽ�
SELECT EMP_NAME, BONUS
FROM EMPLOYEE
WHERE BONUS NOT BETWEEN 0.1 AND 0.3;

--50. `SAL_LEVEL`�� 'S3'���� 'S5' ���̰� �ƴ� ����� �̸��� �޿� ����
SELECT EMP_NAME, SAL_LEVEL
FROM EMPLOYEE
WHERE SAL_LEVEL NOT BETWEEN 'S3' AND 'S5';






