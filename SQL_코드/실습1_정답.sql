/******WHERE 절 사용 논리연산자 NOT ******/
--26.DEPT_CODE`가 'D5'가 아닌 사원의 이름과 부서 코드
SELECT EMP_NAME, DEPT_CODE
FROM employee
WHERE DEPT_CODE != ('D5');
--27.SALARY`가 3000000보다 크지 않은 사원의 이름과 급여
SELECT EMP_NAME, SALARY
FROM EMPLOYEE
WHERE SALARY <= 3000000;
--28.JOB_CODE`가 'J3'가 아닌 사원의 이름과 직무 코드
SELECT EMP_NAME,JOB_CODE
FROM EMPLOYEE
WHERE JOB_CODE != ('J3');
--29.BONUS`가 0.1이 아닌 사원의 이름과 보너스
SELECT EMP_NAME,BONUS
FROM EMPLOYEE
WHERE BONUS != 0.1;
-- 숫자의 경우 "사용하지 않아도 사용이 가능
--30.MANAGER_ID`가 200이 아닌 사원의 이름과 매니저 ID
SELECT EMP_NAME,MANAGER_ID
FROM EMPLOYEE
WHERE MANAGER_ID != 200;

/***** NULL 비교하기 IS NULL *****/
--31.EMAIL`이 없는 사원의 이름과 이메일
SELECT EMP_NAME,EMAIL
FROM employee
WHERE EMAIL IS NULL;
---이메일 칸에 이메일이 없는 사람들 조회
--> 사람조회가 안된다면 모두 이메일을 작성해준 것
--32.PHONE`이 없는 사원의 이름과 전화번호
SELECT EMP_NAME,PHONE
FROM EMPLOYEE
WHERE PHONE IS NULL;
--> 핸드폰 번호를 작성하지 않은 사람들 존재
--33.BONUS`가 없는 사원의 이름과 보너스
SELECT EMP_NAME,BONUS
FROM EMPLOYEE
WHERE bonus IS NULL;
--34.MANAGER_ID`가 없는 사원의 이름과 매니저 ID
SELECT EMP_NAME,MANAGER_ID
FROM employee
WHERE MANAGER_ID IS NULL;
--35.ENT_DATE`가 없는 사원의 이름과 종료일
SELECT EMP_NAME, ENT_DATE
FROM employee
WHERE ENT_DATE IS NULL;

/****** NULL 비교하기 IS NOT NULL ******/
--36.EMAIL`이 있는 사원의 이름과 이메일
--이메일칸에 이메일이 모두 작성된 사람들만 조회
SELECT EMP_NAME,EMAIL
FROM employee
WHERE EMAIL IS NOT NULL;
--37.PHONE`이 있는 사원의 이름과 전화번호
SELECT EMP_NAME,PHONE
FROM employee
WHERE phone IS NOT NULL;
--38.BONUS`가 있는 사원의 이름과 보너스
--> 보너스를 받은 사원만 조회
SELECT EMP_NAME,BONUS
FROM EMPLOYEE
WHERE BONUS IS NOT NULL;
--39.MANAGER_ID`가 있는 사원의 이름과 매니저 ID
SELECT EMP_NAME,MANAGER_ID
FROM employee
WHERE MANAGER_ID IS NOT NULL;
--40.ENT_DATE`가 있는 사원의 이름과 종료일
SELECT EMP_NAME,ENT_DATE
FROM employee
WHERE ENT_DATE IS NOT NULL;
/******BETWEEN 연산자 사용******/
--41.SALARY가 2000000에서 3000000 사이인 사원의 이름과 급여
SELECT EMP_NAME,SALARY
FROM EMPLOYEE
WHERE SALARY BETWEEN 2000000 AND 3000000;
--//42.HIRE_DATE`가 2000년 1월 1일부터 2010년 12월 31일 사이인 사원의 이름과 입사일
SELECT ENP_NAME,HIRE_DATE 
FROM EMPLOYEE
WHERE HIRE_DATE BETWEEN TO_DATE('2000-01-01','YYYY-MM-DD')
AND TO_DATE('2010-12-31','YYYY-MM-DD');
--43.EMP_ID`가 210에서 220 사이인 사원의 이름과 ID
SELECT EMP_NAME,EMP_ID
FROM EMPLOYEE
WHERE EMP_ID BETWEEN 210 AND 220;
--44.BONUS`가 0.1에서 0.3 사이인 사원의 이름과 보너스
SELECT EMP_NAME,BONUS
FROM EMPLOYEE
WHERE BONUS BETWEEN 0.1 AND 0.3;
--//45.SAL_LEVEL`이 'S3'에서 'S5' 사이인 사원의 이름과 급여 수준
SELECT EMP_NAME,SAL_LEVER
FROM EMPLOYEE
WHERE SAL_LEVEL BETWEEN 'S3' AND 'S5';

/******NONT BETWEEN 연산자 사용******/
--46.SALARY가 2000000에서 3000000 사이가 아닌 사원의 이름과 급여
select EMP_NAME,SALARY
FROM EMPLOYEE
WHERE SALARY NOT BETWEEN 2000000 AND 3000000;
--47.HIRE_DATE`가 2000년 1월 1일부터 2010년 12월 31일 사이가 아닌 사원의 이름과 입사일
SELECT EMP_NAME,HIRE_DATE
FROM EMPLOYEE
WHERE HIRE_DATE NOT BETWEEN TO_DATE('2000-01-01','YYYY-MM-DD')
AND TO_DATE('2000-01-01','YYYY-MM-DD');
--48.EMP_ID`가 210에서 220 사이가 아닌 사원의 이름과 ID
SELECT EMP_NAME,EMP_ID
FROM EMPLOYEE
WHERE EMP_ID NOT BETWEEN  210 AND 220;
--49.BONUS가 0.1에서 0.3 사이가 아닌 사원의 이름과 보너스
SELECT EMP_NAME,BONUS
FROM EMPLOYEE
WHERE BONUS NOT BETWEEN 0.1 AND 0.3;
--50.SAL_LEVEL`이 'S3'에서 'S5' 사이가 아닌 사원의 이름과 급여 수준
SELECT EMP_NAME,SAL_LEVEL
FROM EMPLOYEE
WHERE SAL_LEVEL NOT BETWEEN 'S3' AND 'S5';
