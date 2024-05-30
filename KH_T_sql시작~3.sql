--모든 직원 정보 조회
SELECT * FROM emplyee;

--모든 부서 정보 조회
SELECT  * FROM department;

--모든 직업 정보 조회
SELECT * FROM JOB;

--EMPLOYEE 테이블에서 이름, 입사일 조회
SELECT EMP_NAME,hire_date from emplyee;

/*
컬럼값 산술 연산
--컬럼값 : 행과 열이 교차되는 테이블 한 칸에 작성된 값

--SELECT 문 작성 시 컬럼명에 산술 연산을 직접 작성하면
  조회결과(RESULT SET)에 연산결과가 반영되어 조회된다.
*/
--EMPLOYEE 테이블에서 모든 사원에 이름,급여,급여+100만 조회
--급여 우리회사 직원들의 급여를 100만원씩 +하면 어떻게 될 것인가?
SELECT EMP_NAME,SALARY,SALARY + 1000000 FROM emplyee; 

--급여 + 100에 AS 사용해서 100만원인상 추가
--AS의 경우 큰 따옴푤르 사용해서 표기
SELECT EMP_NAME,SALARY,SALARY + 100000 AS "급여_100만원_인상"
FROM emplyee;

--EMPLOYEE 테이블에서 모든 사원의 사번, 이름, 연봉(급여 *12) 조회
--SALARY


