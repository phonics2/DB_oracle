--사원  = EMPLOYEE2
--부서 = DEPARTMENT2

--INSERT 
--1. 사원 번호 '223', 이름 '김영수', 주민등록번호 '850101-1234567', 이메일 'kim_ys@or.kr', 전화번호 '01012345678', 부서 코드 'D1', 직무 코드 'J4', 급여 수준 'S2', 급여 3500000, 보너스율 0.1, 매니저 ID '200', 입사일 '15/06/20', 퇴사여부 'N'.
INSERT INTO employee2 (
    emp_id,
    emp_name,
    emp_no,
    email,
    phone,
    dept_code,
    job_code,
    sal_level,
    salary,
    bonus,
    manager_id,
    hire_date,
    ent_date,
    ent_yn
) VALUES (
    '223',
    '김영수',
    '850101-1234567',
    'kim_ys@or.kr',
    '01012345678',
    'D1',
    'J4',
    'S2',
    3500000,
    0.1,
    '200',
    TO_DATE('2015-06-20', 'YYYY-MM-DD'),
    NULL,
    'N'
);

--2. 부서 코드 'D10', 부서명 '연구개발부', 지역 코드 'L6'.
INSERT INTO department2 VALUES (
    'D10',
    '연구개발부',
    'L6'
);
/*

오류 보고 -
SQL 오류: ORA-12899: value too large for column "KH_T"."DEPARTMENT2"."DEPT_ID" (actual: 3, maximum: 2)

컬럼의 최대 크기가 2BYTE로 영어나 숫자로 2글자까지만 가능하지만
3글자를 작성하려 했기 때문에 에러 발생
-> department2 테이블에서  "DEPT_ID" 에 해당하는 컬럼의 크기를
        2에서 3으로 늘려주거나
        VARCHAR2로 변경해서 255까지 늘려주는 방법이 존재 ->VARCHAR2 알아서 공간크기를 조정
        CHAR 의 경우 공간 크기를 조정하지 못하기 때문에 처음부터 크기를 잘 선택
*/

--UPDATE 실습
--1. 직원 사원 번호 '200'의 이메일을 'sun_di_updated@or.kr'로, 전화번호를 '01012345678'로 변경
SELECT
    *
FROM
    employee2
WHERE
    emp_id = '200';

UPDATE employee2
SET
    email = 'sun_di_updated@or.kr',
    phone = '01012345678'
WHERE
    emp_id = '200';

--2. 부서 코드 'D1'에 속한 모든 직원의 급여를 10% 인상하고, 보너스율을 0.05 증가시키기
SELECT
    *
FROM
    employee2
WHERE
    dept_code = 'D1';

UPDATE employee2
SET
    salary = salary * 1.10,
    bonus = bonus + 0.05
WHERE
    dept_code = 'D1';

/****** INSERT 25 문제 정답 ******/
-- 1
INSERT INTO employee (
    emp_id,
    emp_name,
    emp_no,
    email,
    phone,
    dept_code,
    job_code,
    sal_level,
    salary,
    bonus,
    manager_id,
    hire_date,
    ent_yn
) VALUES (
    '223',
    '김영수',
    '850101-1234567',
    'kim_ys@or.kr',
    '01012345678',
    'D1',
    'J4',
    'S2',
    3500000,
    0.1,
    '200',
    TO_DATE('15/06/20', 'YY/MM/DD'),
    'N'
);
-- 2
INSERT INTO department (
    dept_id,
    dept_title,
    location_id
) VALUES (
    'D10',
    '연구개발부',
    'L6'
);
-- 3
INSERT INTO employee (
    emp_id,
    emp_name,
    emp_no,
    email,
    phone,
    dept_code,
    job_code,
    sal_level,
    salary,
    bonus,
    manager_id,
    hire_date,
    ent_yn
) VALUES (
    '224',
    '이수진',
    '900101-2345678',
    'lee_sj@or.kr',
    '01098765432',
    'D2',
    'J2',
    'S3',
    3000000,
    0.15,
    '201',
    TO_DATE('16/07/01', 'YY/MM/DD'),
    'N'
);
-- 4
INSERT INTO department (
    dept_id,
    dept_title,
    location_id
) VALUES (
    'D11',
    '품질관리부',
    'L7'
);
-- 5.
INSERT INTO employee (
    emp_id,
    emp_name,
    emp_no,
    email,
    phone,
    dept_code,
    job_code,
    sal_level,
    salary,
    bonus,
    manager_id,
    hire_date,
    ent_yn
) VALUES (
    '225',
    '박민수',
    '750303-3456789',
    'park_ms@or.kr',
    '01123456789',
    'D3',
    'J5',
    'S1',
    2800000,
    0.05,
    '202',
    TO_DATE('17/08/15', 'YY/MM/DD'),
    'N'
);
-- 6
INSERT INTO department (
    dept_id,
    dept_title,
    location_id
) VALUES (
    'D12',
    '재무부',
    'L8'
);
-- 7.
INSERT INTO employee (
    emp_id,
    emp_name,
    emp_no,
    email,
    phone,
    dept_code,
    job_code,
    sal_level,
    salary,
    bonus,
    manager_id,
    hire_date,
    ent_yn
) VALUES (
    '226',
    '최은지',
    '860404-4567890',
    'choi_ej@or.kr',
    '01056789012',
    'D4',
    'J3',
    'S4',
    4200000,
    0.2,
    '203',
    TO_DATE('18/09/25', 'YY/MM/DD'),
    'N'
);
-- 8
INSERT INTO department (
    dept_id,
    dept_title,
    location_id
) VALUES (
    'D13',
    '홍보부',
    'L9'
);
-- 9. 
INSERT INTO employee (
    emp_id,
    emp_name,
    emp_no,
    email,
    phone,
    dept_code,
    job_code,
    sal_level,
    salary,
    bonus,
    manager_id,
    hire_date,
    ent_yn
) VALUES (
    '227',
    '장영호',
    '950505-5678901',
    'jang_yh@or.kr',
    '01067890123',
    'D5',
    'J1',
    'S5',
    5000000,
    0.25,
    '204',
    TO_DATE('19/10/30', 'YY/MM/DD'),
    'N'
);
-- 10
INSERT INTO department (
    dept_id,
    dept_title,
    location_id
) VALUES (
    'D14',
    '전략기획부',
    'L10'
);
-- 11.
INSERT INTO employee (
    emp_id,
    emp_name,
    emp_no,
    email,
    phone,
    dept_code,
    job_code,
    sal_level,
    salary,
    bonus,
    manager_id,
    hire_date,
    ent_yn
) VALUES (
    '228',
    '윤지혜',
    '760606-6789012',
    'yoon_jh@or.kr',
    '01734567890',
    'D6',
    'J2',
    'S2',
    3200000,
    0.1,
    '205',
    TO_DATE('20/11/05', 'YY/MM/DD'),
    'N'
);
-- 12
INSERT INTO department (
    dept_id,
    dept_title,
    location_id
) VALUES (
    'D15',
    '법무부',
    'L11'
);
-- 13.
INSERT INTO employee (
    emp_id,
    emp_name,
    emp_no,
    email,
    phone,
    dept_code,
    job_code,
    sal_level,
    salary,
    bonus,
    manager_id,
    hire_date,
    ent_yn
) VALUES (
    '229',
    '김도현',
    '830707-7890123',
    'kim_dh@or.kr',
    '01078901234',
    'D7',
    'J4',
    'S3',
    3600000,
    0.15,
    '206',
    TO_DATE('21/12/10', 'YY/MM/DD'),
    'N'
);
-- 14
INSERT INTO department (
    dept_id,
    dept_title,
    location_id
) VALUES (
    'D16',
    '고객지원부',
    'L12'
);
-- 15.
INSERT INTO employee (
    emp_id,
    emp_name,
    emp_no,
    email,
    phone,
    dept_code,
    job_code,
    sal_level,
    salary,
    bonus,
    manager_id,
    hire_date,
    ent_yn
) VALUES (
    '230',
    '이성민',
    '910808-8901234',
    'lee_sm@or.kr',
    '01089012345',
    'D8',
    'J3',
    'S4',
    3800000,
    0.2,
    '207',
    TO_DATE('22/01/15', 'YY/MM/DD'),
    'N'
);
-- 16
INSERT INTO department (
    dept_id,
    dept_title,
    location_id
) VALUES (
    'D17',
    '기술혁신부',
    'L13'
);
-- 17
INSERT INTO employee (
    emp_id,
    emp_name,
    emp_no,
    email,
    phone,
    dept_code,
    job_code,
    sal_level,
    salary,
    bonus,
    manager_id,
    hire_date,
    ent_yn
) VALUES (
    '231',
    '박소연',
    '920909-9012345',
    'park_sy@or.kr',
    '01145678901',
    'D9',
    'J5',
    'S1',
    3000000,
    0.05,
    '208',
    TO_DATE('23/02/20', 'YY/MM/DD'),
    'N'
);
-- 18
INSERT INTO department (
    dept_id,
    dept_title,
    location_id
) VALUES (
    'D18',
    '경영지원부',
    'L14'
);
-- 19
INSERT INTO employee (
    emp_id,
    emp_name,
    emp_no,
    email,
    phone,
    dept_code,
    job_code,
    sal_level,
    salary,
    bonus,
    manager_id,
    hire_date,
    ent_yn
) VALUES (
    '232',
    '최민준',
    '930101-1234567',
    'choi_mj@or.kr',
    '01012345678',
    'D10',
    'J2',
    'S2',
    3100000,
    0.1,
    '209',
    TO_DATE('24/03/25', 'YY/MM/DD'),
    'N'
);
-- 20
INSERT INTO department (
    dept_id,
    dept_title,
    location_id
) VALUES (
    'D19',
    '정보기술부',
    'L15'
);
-- 21
INSERT INTO employee (
    emp_id,
    emp_name,
    emp_no,
    email,
    phone,
    dept_code,
    job_code,
    sal_level,
    salary,
    bonus,
    manager_id,
    hire_date,
    ent_yn
) VALUES (
    '233',
    '김하늘',
    '940202-2345678',
    'kim_hn@or.kr',
    '01023456789',
    'D11',
    'J1',
    'S3',
    3400000,
    0.15,
    '210',
    TO_DATE('25/04/30', 'YY/MM/DD'),
    'N'
);
-- 22
INSERT INTO department (
    dept_id,
    dept_title,
    location_id
) VALUES (
    'D20',
    '자원관리부',
    'L16'
);
-- 23
INSERT INTO employee (
    emp_id,
    emp_name,
    emp_no,
    email,
    phone,
    dept_code,
    job_code,
    sal_level,
    salary,
    bonus,
    manager_id,
    hire_date,
    ent_yn
) VALUES (
    '234',
    '박지훈',
    '950303-3456789',
    'park_jh@or.kr',
    '01034567890',
    'D12',
    'J4',
    'S4',
    3700000,
    0.2,
    '211',
    TO_DATE('26/05/15', 'YY/MM/DD'),
    'N'
);
-- 24
INSERT INTO department (
    dept_id,
    dept_title,
    location_id
) VALUES (
    'D21',
    '연구소',
    'L17'
);
-- 25
INSERT INTO employee (
    emp_id,
    emp_name,
    emp_no,
    email,
    phone,
    dept_code,
    job_code,
    sal_level,
    salary,
    bonus,
    manager_id,
    hire_date,
    ent_yn
) VALUES (
    '235',
    '최수민',
    '960404-4567890',
    'choi_sm@or.kr',
    '01045678901',
    'D13',
    'J3',
    'S2',
    3300000,
    0.1,
    '212',
    TO_DATE('27/06/20', 'YY/MM/DD'),
    'N'
);




/****** UPDATE 25 문제 정답 ******/

--1. 직원 사원 번호 '200'의 이메일을 'sun_di_updated@or.kr'로, 전화번호를 '01012345678'로 변경
UPDATE eployee2
SET
    email = 'sun_di_updated@or.kr',
    phone = '01012345678'
WHERE
    emp_id = '200';

--2. 부서 코드 'D1'에 속한 모든 직원의 급여를 10% 인상하고, 보너스율을 0.05 증가시키기
UPDATE employee2
SET
    salary = salary * 1.10,
    bonus = bonus + 0.05
WHERE
    dept_code = 'D1';

--3. 직무 코드 'J2'를 가진 모든 직원의 직무 코드를 'J5'로, 부서 코드를 'D3'로 변경
UPDATE employee2
SET
    job_code = 'J5',
    dept_code = 'D3'
WHERE
    job_code = 'J2';

--4. 입사일이 2000-01-01 이후인 모든 직원의 급여를 5% 인상하고, 보너스율을 0.02 증가시키기
UPDATE employee2
SET
    salary = salary + 1.05,
    bonus = bonus + 0.02
WHERE
    hire_date > TO_DATE('2000-01-01', 'YYYY-MM-DD');

--5. 매니저 ID가 '200'인 모든 직원의 매니저 ID를 '210'으로, 부서 코드를 'D5'로 변경
'로 변경
UPDATE EMPLOYEE2
SET MANAGER_ID = '210', DEPT_CODE = 'D5'
WHERE MANAGER_ID = '200;

--6. 모든 직원의 이메일 도메인을 'or.kr'에서 'company.com'으로 변경하고, 전화번호 형식을 '010-xxxx-xxxx'로 변경
UPDATE EMPLOYEE2
SET EMAIL = REPLACE(EMAIL,  'or.kr',   'company.com'),
        PHONE = '010-XXXX-XXXX';
        
        
       -- PHONE = '010-' || SUBSTR(PHONE, 4 ,4) || '-' || SUBSTR(PHONE, 8);
       --PHONE = REGEXP_REPLACE(PHONE, '(\d{3})(\d{4})(\d{4})', '\1-\2-\3');
       -- LIKE를 사용해서 변경
/*
SQL 오류: ORA-12899: value too large for column "KH_T"."EMPLOYEE2"."EMAIL" (actual: 26, maximum: 25)
"missing expression" -> '' "" 잘 닫히지 않을때 쓰는 구문
*/        





















--7. 급여 수준이 'S3'인 모든 직원의 급여를 4000000으로, 직무 코드를 'J4'로 수정
UPDATE EMPLOYEE2
SET SALARY = 4000000, JOB_CODE = 'J4'
WHERE SAL_LEVEL = 'S3';

--8. 입사일이 '1997-09-12'인 직원의 퇴사일을 '2024-09-12'로, 퇴사 여부를 'Y'로 변경
UPDATE EMPLOYEE2
SET ENT_DATE = TO_DATE( '2024-09-12', 'YYYY-MM-DD'),
        ENT_YN = 'Y'
WHERE HIRE_DATE = TO_DATE ('1997-09-12', 'YYYY-MM-DD');
        
--9. 이름이 '김영수'인 직원의 이름을 '김영호'로, 이메일을 'kim_yh@or.kr'로 변경
UPDATE EMPLOYEE2
SET EMP_NAME = '김영호',
    EMAIL =  'kim_yh@or.kr'
WHERE EMP_NAME = '김영수';
--10. 전화번호가 '01045686656'인 직원의 전화번호를 '01198765432'로, 이메일을 'song_jk_updated@or.kr'로 변경

--11. 보너스율이 0.1인 모든 직원의 보너스율을 0.2로, 급여를 3200000으로 변경
UPDATE EMPLOYEE
SET BONUS = 0.2,
    SALARY = 3200000
    WHERE BONUS = 0.1;
--12. 주민등록번호가 '861015-1356452'인 직원의 급여를 3800000으로, 부서 코드를 'D7'으로 수정

--13. 모든 직원의 부서 코드를 'D9'로, 직무 코드를 'J1'로 변경

--14. 부서 코드 'D5'에 속한 모든 직원의 보너스율을 0.05 증가시키고, 전화번호를 '01011112222'로 변경

--15. 직무 코드 'J3'를 가진 모든 직원의 이메일을 'updated@or.kr'로, 급여 수준을 'S5'로 변경
UPDATE EMPLOYEE
SET EMAIL = 'updated@or.kr',
SAL_LEVEL = 'S5'
WHERE JOB_CODE = 'J3';
--16. 모든 직원의 입사 연도를 '2023'로, 퇴사 여부를 'N'으로 변경
UPDATE EMPLOYEE2
SET HIRE_DATE = TO_DATE('2023' || TO_CHAR(HIRE_DATE, '-MM-DD'), 'YYYY-MM-DD'),
        ENT_YN = 'N';

UPDATE EMPLOYEE2
SET HIRE_DATE = '2023',
        ENT_YN = 'N';

ROLLBACK;
--17. 보너스율이 0.15인 모든 직원의 보너스율을 0.25로, 급여를 4000000으로 변경

--18. 부서 코드 'D8'과 직무 코드 'J2'를 가진 모든 직원의 급여를 4500000으로, 전화번호를 '01022223333'으로 변경
UPDATE EMPLOYEE2
SET SALARY = 4500000,
PHONE ='01022223333'
WHERE DEPT_CODE = 'D8' 
AND JOB_CODE = 'J2';



--19. 모든 직원의 이메일 도메인을 'example.com'으로, 부서 코드를 'D10'으로 변경
UPDATE EMPLOYEE2
SET EMAIL =  'example.com',
--EMAIL = REPLACE(EMAIL, 'or.kr', 'example.com'),
    DEPT_CODE = 'D10';




















--20. 이름이 '박민수'인 직원의 이름을 '박준수'로, 급여를 3500000으로 변경

--21. 부서 코드 'D3'에 속한 모든 직원의 급여를 3800000으로, 보너스율을 0.2로 수정

--22. 입사일이 2000-01-01 이후인 모든 직원의 급여를 5% 인상하고, 보너스율을 0.02 증가시키기

--23. 매니저 ID가 '201'인 모든 직원의 매니저 ID를 '211'으로, 부서 코드를 'D6'로 변경

--24. 모든 직원의 이메일 도메인을 'newcompany.com'으로, 전화번호 형식을 '011-xxxx-xxxx'로 변경
UPDATE EMPLOYEE2
SET EMAIL = SUBSTR(
    email, 1, instr ( email, '@' ) - 1
    || '@newcompany.com', phone = '011-XXXX-XXXX';

--25. 부서 코드 'D4'에 속한 모든 직원의 보너스율을 0.1 증가시키고, 전화번호를 '01033334444'로 변경
UPDATE EMPLOYEE2
SET BUNUS = BONUS + 0.1,
PHONE = '01033334444'
WHERE 부서코드 = 'D4';





































