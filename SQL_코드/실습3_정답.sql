--실습문제
CREATE TABLE EMPLOYEE2 AS SELECT *FROM employee;
SELECT * FROM employee2;
--1. 사원 번호 '223', 이름 '김영수', 주민등록번호 '850101-1234567', 
--이메일 'kim_ys@or.kr', 전화번호 '01012345678', 부서 코드 'D1', 
--직무 코드 'J4', 급여 수준 'S2', 급여 3500000, 보너스율 0.1, 매니저 ID '200', 
--입사일 '15/06/20', 퇴사여부 'N'.
INSERT INTO EMPLOYEE2 
VALUES('233',
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
'TO_DATE('2015-06-10','YYY-MM-DD'),'NULL,'N');

--2. 부서 코드 'D10', 부서명 '연구개발부', 지역 코드 'L6'.
INSERT 
INTO DEPARTMENT2 
VALUES('D10','연구개발부','L6');
/*
SQL 오류: ORA-12899: value too large for column "KHT"."DEPARTMENT2"."DEPT_ID" (actual: 3, maximum: 2)

컬럼의 최대크기가 2BYTE로 영어나 숫자로 2글자까지만 가능하지만
3글자를 작성하려 했기 때문에 에러 발생
-> department2 테이블에서 "DEPT_ID"에 해당하는 컬럼의 크기를
    2에서 3으로 늘려주거나
    VARCAHR2로 변경해서 255까지 늘려주는 방법이 존재 -> VARCHAR2알아서 공간크기를 조정
    CHAR 의 경우에는 공간 크기를 조정하지 못하기 때문에 처음부터 크기를 잘 선택
*/

--3. 사원 번호 '224', 이름 '이수진', 주민등록번호 '900101-2345678', 이메일 'lee_sj@or.kr', 전화번호 '01098765432', 부서 코드 'D2', 직무 코드 'J2', 급여 수준 'S3', 급여 3000000, 보너스율 0.15, 매니저 ID '201', 입사일 '16/07/01', 퇴사여부 'N'.
INSERT INTO EMPLOYEE2 VALUES(224,'이수진','900101-2345678','lee_sj@or.kr,''01098765432','D2','J2','S3',3000000,0.15,201,TO_DATE('16/07/01','DD/MM/YY'),NULL,'N');
--4. 부서 코드 'D11', 부서명 '품질관리부', 지역 코드 'L7'.
INSERT INTO DEPARTMENT2 VALUES('D11,'품질관리부','L7')
--
--5. 사원 번호 '225', 이름 '박민수', 주민등록번호 '750303-3456789', 이메일 'park_ms@or.kr', 전화번호 '01123456789', 부서 코드 'D3', 직무 코드 'J5', 급여 수준 'S1', 급여 2800000, 보너스율 0.05, 매니저 ID '202', 입사일 '17/08/15', 퇴사여부 'N'.
INSERT INTO EMPLOYEE2 VALUES(225,'박민수','750303-3456789','park_ms@or.kr','01123456789','D3','J5','S1','2800000,0.05,202,TO_DATE('17/08/15','DD/MM/YY'),NULL,'N');

--6. 부서 코드 'D12', 부서명 '재무부', 지역 코드 'L8'.
INSERT INTO DEPARTMENT2 VALUES('D12,'재무부','L8');
--
--7. 사원 번호 '226', 이름 '최은지', 주민등록번호 '860404-4567890', 이메일 'choi_ej@or.kr', 전화번호 '01056789012', 부서 코드 'D4', 직무 코드 'J3', 급여 수준 'S4', 급여 4200000, 보너스율 0.2, 매니저 ID '203', 입사일 '18/09/25', 퇴사여부 'N'.
INSERT INTO EMPLOYEE2 VALUES('226,'최은지','860404-4567890','choi_ej@or.kr','01056789012','D4','J3','S4',4200000,0.2,203,TO_DATE('18/09/25','DD/MM/YY'),NULL,'N');
--8. 부서 코드 'D13', 부서명 '홍보부', 지역 코드 'L9'.
INSERT INTO DEPARTMENT2 VALUES('D13,'홍보부','L9');
--
--9. 사원 번호 '227', 이름 '장영호', 주민등록번호 '950505-5678901', 이메일 'jang_yh@or.kr', 전화번호 '01067890123', 부서 코드 'D5', 직무 코드 'J1', 급여 수준 'S5', 급여 5000000, 보너스율 0.25, 매니저 ID '204', 입사일 '19/10/30', 퇴사여부 'N'.
INSERT INTO EMPLOYEE2 VALUES(227,'장영호','950505-5678901','jang_yh@or.kr','01067890123','D5','J1','S5',5000000,0.25,204,TO_DATE('19/10/30','DD/MM/YY'),NULL,'N');
--10. 부서 코드 'D14', 부서명 '전략기획부', 지역 코드 'L10'.
INSERT INTO DEPARTMENT2 VALUES('D14','전략기획부','L10');
--11. 사원 번호 '228', 이름 '윤지혜', 주민등록번호 '760606-6789012', 이메일 'yoon_jh@or.kr', 전화번호 '01734567890', 부서 코드 'D6', 직무 코드 'J2', 급여 수준 'S2', 급여 3200000, 보너스율 0.1, 매니저 ID '205', 입사일 '20/11/05', 퇴사여부 'N'.
INSERT INTO EMPLOYEE2 VALUES(228,'윤지혜','760606-6789012', 'yoon_jh@or.kr','01734567890','D6','J2','S2',3200000,0.1,205,TO_DATE('20/11/05','DD/MM/YY'),NULL,'N');
--12. 부서 코드 'D15', 부서명 '법무부', 지역 코드 'L11'.
INSERT INTO DEPARTMENT2 VALUES('D15','법무부','L11');
--13. 사원 번호 '229', 이름 '김도현', 주민등록번호 '830707-7890123', 이메일 'kim_dh@or.kr', 전화번호 '01078901234', 부서 코드 'D7', 직무 코드 'J4', 급여 수준 'S3', 급여 3600000, 보너스율 0.15, 매니저 ID '206', 입사일 '21/12/10', 퇴사여부 'N'.
INSERT INTO EMPLOYEE2 VALUES(229,'김도현','830707-7890123','kim_dh@or.kr','01078901234','D7','J4','S3',3600000,0.15,206,TO_DATE('21/12/10','DD/MM/YY'),NULL,'N');
--14. 부서 코드 'D16', 부서명 '고객지원부', 지역 코드 'L12'.
INSERT INTO DEPARTMENT2 VALUES('D16','고객지원부','L12');
--15. 사원 번호 '230', 이름 '이성민', 주민등록번호 '910808-8901234', 이메일 'lee_sm@or.kr', 전화번호 '01089012345', 부서 코드 'D8', 직무 코드 'J3', 급여 수준 'S4', 급여 3800000, 보너스율 0.2, 매니저 ID '207', 입사일 '22/01/15', 퇴사여부 'N'.
INSERT INTO EMPLOYEE2 VALUES(230,'이성민','910808-8901234','lee_sm@or.kr','01089012345','D8','J3','S4',3800000,0.2,207,TO_DATE('22/01/15','DD/MM/YY'),NULL,'N');
--16. 부서 코드 'D17', 부서명 '기술혁신부', 지역 코드 'L13'.
INSERT INTO DEPARTMENT2 VALUES('D17,'기술혁신부','L13');
--17. 사원 번호 '231', 이름 '박소연', 주민등록번호 '920909-9012345', 이메일 'park_sy@or.kr', 전화번호 '01145678901', 부서 코드 'D9', 직무 코드 'J5', 급여 수준 'S1', 급여 3000000, 보너스율 0.05, 매니저 ID '208', 입사일 '23/02/20', 퇴사여부 'N'.
INSERT INTO EMPLOYEE2 VALUES(231,'박소연','920909-9012345','park_sy@or.kr','01145678901','D9','J5','S1',3000000,0.05,208,TO_DATE('23/02/20','DD/MM/YY'),NULL,'N');
--18. 부서 코드 'D18', 부서명 '경영지원부', 지역 코드 'L14'.
INSERT INTO DEPARTMENT2 VALUES('D18','경영지원부','L14');
--19. 사원 번호 '232', 이름 '최민준', 주민등록번호 '930101-1234567', 이메일 'choi_mj@or.kr', 전화번호 '01012345678', 부서 코드 'D10', 직무 코드 'J2', 급여 수준 'S2', 급여 3100000, 보너스율 0.1, 매니저 ID '209', 입사일 '24/03/25', 퇴사여부 'N'.
INSERT INTO EMPLOYEE2 VALUES(232,'최민준','930101-1234567','choi_mj@or.kr','01012345678','D10','J2','S2',3100000,0.1,209,TO_DATE('24/03/25','DD/MM/YY'),NULL,'N');
--20. 부서 코드 'D19', 부서명 '정보기술부', 지역 코드 'L15'.
INSERT INTO DEPARTMENT2 VALUES('D19','정보기술부','L15');
--21. 사원 번호 '233', 이름 '김하늘', 주민등록번호 '940202-2345678', 이메일 'kim_hn@or.kr', 전화번호 '01023456789', 부서 코드 'D11', 직무 코드 'J1', 급여 수준 'S3', 급여 3400000, 보너스율 0.15, 매니저 ID '210', 입사일 '25/04/30', 퇴사여부 'N'.
INSERT INTO EMPLOYEE2 VALUES(233,'김하늘','940202-2345678','kim_hn@or.kr','01023456789','D11','J1','S3',3400000,0.15,210,TO_DATE('25/14/30','DD/MM/YY'),NULL,'N');
--22. 부서 코드 'D20', 부서명 '자원관리부', 지역 코드 'L16'.
INSERT INTO DEPARTMENT2 VALUES('D20','자원관리부','L16');
--23. 사원 번호 '234', 이름 '박지훈', 주민등록번호 '950303-3456789', 이메일 'park_jh@or.kr', 전화번호 '01034567890', 부서 코드 'D12', 직무 코드 'J4', 급여 수준 'S4', 급여 3700000, 보너스율 0.2, 매니저 ID '211', 입사일 '26/05/15', 퇴사여부 'N'.
INSERT INTO EMPLOYEE2 VALUES(234,'박지훈','950303-3456789','park_jh@or.kr','01034567890','D12','J4','S4',3700000M0.2,211,TO_DATE('26/05/15','DD/MM/YY'),NULL,'N');
--24. 부서 코드 'D21', 부서명 '연구소', 지역 코드 'L17'.
INSERT INTO DEPARTMENT2 VALUES('D21','연구소','L17');
--25. 사원 번호 '235', 이름 '최수민', 주민등록번호 '960404-4567890', 이메일 'choi_sm@or.kr', 전화번호 '01045678901', 부서 코드 'D13', 직무 코드 'J3', 급여 수준 'S2', 급여 3300000, 보너스율 0.1, 매니저 ID '212', 입사일 '27/06/20', 퇴사여부 'N'.
INSERT INTO EMPLOYEE2 VALUES(235,'최수민','960404-4567890','choi_sm@or.kr','01045678901','D13','J3','S2',3300000,0.1,212,TO_DATE('27/06/20','DD/MM/YY'),NULL,'N');

/*****update*****/
--1. 직원 사원 번호 '200'의 이메일을 'sun_di_updated@or.kr'로, 전화번호를 '01012345678'로 변경
SELECT*
FROM EMPLOYEE2
WHERE EMP_ID = '200';

UPDATE EMPLOYEE2
SET EMAIL = 'sun_di_updated@or.kr',
    PHONE = '01012345678'
WHERE EMP_ID = 200;

--2.부서 코드 'D1'에 속한 모든 직원의 급여를 10% 인상하고, 보너스율을 0.05 증가시키기
SELECT * FROM EMPLOYEE2
WHERE DEPT_CODE = 'D1';

UPDATE EMPLOYEE2
SET SALARY = SALARY * 1.10,
    BONUS = BONUS + 0.05
WHERE DEPT_CODE = 'D1';

--3.직무 코드 'J2'를 가진 모든 직원의 직무 코드를 'J5'로, 부서 코드를 'D3'로 변경
UPDATE EMPLOYEE2
SET JOB_CODE = 'J5',
    DEPT_CODE = 'D3'
WHERE JOB_CODE = 'J2';

--4.입사일이 2000-01-01 이후인 모든 직원의 급여를 5% 인상하고, 보너스율을 0.02 증가시키기
UPDATE EMPLOYEE2
SET SALARY = SALARY + 1.05,
    BONUS = BONUS + 0.02
WHERE HIRE_DATE > TO_DATE('2000-01-01','YYYY-MM-DD');

--5.매니저 ID가 '200'인 모든 직원의 매니저 ID를 '210'으로, 부서 코드를 'D5'로 변경
UPDATE EMPLOYEE2
SET MANAGER_ID = '210',
    DEPT_CODE = 'D5'
WHERE MANAGER_ID = '200';

--6.모든 직원의 이메일 도메인을 'or.kr'에서 'company.com'으로 변경하고, 
--전화번호 형식을 '010-xxxx-xxxx'로 변경
UPDATE EMPLOYEE2
SET EMAIL = REPLACE(EMAIL,'or.kr','company.com')
    PNONE = '010-XXXX-XXXX';

   -- PHONE = '010-' || SUBSTR(PHONE,4,4)||'-'||SUBSTR(PHONE,8);
   --PHONE = REGEXP_REPLACE(PHONE,('\d{3})(\d{4})(\d[{4})','\1-\2-\3');
   --LIKE를 사용해서 변경
   /*
   SQL 오류: ORA-00933: SQL command not properly ended
   */
  
--7.급여 수준이 'S3'인 모든 직원의 급여를 4000000으로, 직무 코드를 'J4'로 수정
UPDATE EMPLOYEE2
SET SALARY = 4000000
     JOB_CODE= 'J4'
WHERE SAL_LEVEL = 'S3';

--8.입사일이 '1997-09-12'인 직원의 퇴사일을 '2024-09-12'로, 퇴사 여부를 'Y'로 변경
UPDATE EMPLOYEE2
SET ENT_DATE = TO_DATE('2024-09-12','YYYY-MM-DD'),
    ENT_YN = 'Y'
WHERE HIRE_DATE= TO_DATE('1997-09-12','YYYY-MM-EE');

--9.이름이 '김영수'인 직원의 이름을 '김영호'로, 이메일을 'kim_yh@or.kr'로 변경
UPDATE EMPLOYEE2
SET EMP_NAME = '김영호'.
    EMAIL = 'kim_yh@or.kr'
WHERE EMP_NAME = '김영수';

--10.전화번호가 '01045686656'인 직원의 전화번호를 '01198765432'로, 
--이메일을 'song_jk_updated@or.kr'로 변경
UPDATE EMPLOYEE2
SET PHONE = '01198765432',
    EMAIL = 'song_jk_updated@or.kr
WHERE PHONE = '01045686656';

--11.보너스율이 0.1인 모든 직원의 보너스율을 0.2로, 급여를 3200000으로 변경
UPDATE EMPLOYEE2
SET BONUS = 0.2,
    SALARY = 3200000
WHERE BONUS = 0.1;


--12.주민등록번호가 '861015-1356452'인 직원의 급여를 3800000으로, 부서 코드를 'D7'으로 수정
UPDATE EMPLOYEE2
SET SALARY = 3800000,
    DEPT_CODE = 'D7'
WHERE EMP_NO = '861015-1356452';

13.UPDATE EMPLOYEE2
SET DEPT_CODE = 'D9',
    JOB_CODE = 'J1';

14.UPDATE EMPLOYEE2
SET BONUS = BONUS * 0.05,
    PHONE = '01011112222'
WHERE DEPT_CODE = 'D5';

15.UPDATE EMPLOYEE2
SET EMAIL ='updated@or.kr',
    SAL_LEVEL = 'S5'
WHERE JOB_CODE = 'J3';

--16.모든 직원의 입사 연도를 '2023'로, 퇴사 여부를 'N'으로 변경
UPDATE EMPLOYEE2
SET HIRE_DATE = TO_DATE('2023||TO_CHAR(HIRE_DATE,'-MM-DD'),'YYYY-MM-DD'),
    ENT_YN = 'N';
    
UPDATE EMPLOYEE2
SET HIRE_DATE = '2023'
     ENT_YN = 'N';

ROLLBACK;
17.UPDATE EMPLOYEE2
SET BONUS = 0.25,
    SALARY = 4000000
WHERE BONUS = 0.15;

--18.부서 코드 'D8'과 직무 코드 'J2'를 가진 모든 직원의 급여를 4500000으로, 
--전화번호를 '01022223333'으로 변경
UPDATE EMPLOYEE2
SET SALARY = 4500000,
    PHONE = '01022223333'
WHERE DEPT_CODE = 'D8' 
AND JOB_CODE = 'J2';

--19.모든 직원의 이메일 도메인을 'example.com'으로, 부서 코드를 'D10'으로 변경
UPDATE EMPLOYEE2
SET EMAIL = 'example.com'
--SET EMAIL = REPLACE(EMAIL,'or.kr','example.com'),
    DEPT_CODE = 'D10';

20.UPDATE EMPLOYEE2
SET EMP_NAME = '박준수',
    SARLARY = 3500000
WHERE EMP_NAME = '박민수';

21.UPDATE EMPLOYEE2
SET SALARY = 3800000,
    BONUS = 0.2
WHERE DEPT_CODE = 'D3';

22.UPDATE EMPLOYEE2
SET SALARY = SALARY * 0.5,
    BONUS = BONUS * 0.02
WHERE HIRE_DATE > TO_DATE('2000-01-01','YYYY-MM-DD');

23.UPDATE EMPLOYEE2
SET MANAGER_ID = 211,
    DEPT_CODE = 'D6'
WHERE MANABER_ID = 201;

--24.모든 직원의 이메일 도메인을 'newcompany.com'으로, 전화번호 형식을 '011-xxxx-xxxx'로 변경
UPDATE EMPLOYEE2
SET EMAIL = SUBSTR(
    email, 1, instr ( email, '@' ) - 1
    || '@newcompany.com', phone = '011-xxxx-xxxx';

--25.부서 코드 'D4'에 속한 모든 직원의 보너스율을 0.1 증가시키고, 전화번호를 '01033334444'로 변경

UPDATE EMPLOYEE2
SET BONUS = BONUS + 0.1,
    PHONE = '01033334444'
WHERE DEPT_CODE = 'D4';  

    