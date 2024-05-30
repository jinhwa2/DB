
/*
테이블을 만들 때 NULL 값이 들어갈 수 있도록 허용한
컬럼에서만 가능
널이 아님에 체크를 해주지 않은 컬럼에서는 가능

널이 아님 체크를 해준 컬럼 : 필수로 값을 넣어야하는 공간

예를들어 
회원가입 
아이디 이름 이메일 번호 주소 ->널이 아님 체크

기념일 ->널이 아님 체크 해지



INSERT 에서 값을 선택해서 넣을 수 있는 컬럼이라면
선택해서 넣을 수 있는 컬럼명을 지워준 후(작성하지 않은 후)
VALUES 다음에 값을 집어넣는 공간에도 
값을 추가하지 않으면 됨


*/




/* 공백이나 띄어쓰기는 관계 없이 원하는 SQL 구문만큼 드래그해서 실행 */
INSERT INTO kh_cafe (c_id,c_name,c_address,c_phone,c_time  )  
VALUES(2,'빠나쁘레쏘', '서울시 강남구 력삼동', 
'02-5555-5555','영업시간 12:00 ~ 14:00');

-- 3 검포즈커피 경기도 화남시 화남구 031-3232-3333 영업시간 평일 15:00 ~ 18:00
INSERT INTO kh_cafe (c_id, c_name, c_address, c_phone,c_time) 
VALUES(3,'컴포즈커리','경기도 화남시 화남구',
'031-3232-3333','영업시간 평일 15:00 ~ 18:00');


-- 4 활리스커피 인천시 남동구 남동동 032-8888-8888 영업시간 평일 10:00 ~ 17:00
INSERT INTO kh_cafe (c_id, c_name, c_address, c_phone,c_time) 
VALUES(4,'활리스커피','인천시 남동구 남동동',
'032-8888-8888','영업시간 평일 10:00 ~ 17:00');
-- 5 커피빈 서울특별시 역삼동                     영업시간 평일 10:00 ~ 13:00
--없다면 괄호안에 그 뒤에도 안써줘도됨

INSERT INTO kh_cafe (c_id, c_name, c_address,c_time) 
VALUES(5,'커피빈','서울특별시 역삼동',
'영업시간 평일 10:00 ~ 13:00');

--6 스타벅스 서울시 종로구 관철동 02-1111-2222 영업시간 평일 08:00 ~ 22:00
INSERT INTO kh_cafe (c_id,c_name,c_address,c_phone,c_time)
VALUES(6,'스타벅스','서울시 종로구 관철동','02-1111-2222','영업시간 평일 08:00 ~ 22:00'); 


--7 탐엔탐스 서울시 동대문구 장안동 02-5555-6666 영업시간 10:00 ~ 20:00
INSERT INTO kh_cafe (c_id,c_name,c_address,c_phone,c_time)
VALUES(7,'탐엔탐스','서울시 동대문구 장안동','02-5555-6666','영업시간 10:00 ~ 20:00'); 

--8 이디야커피 서울시 송파구 잠실동 02-1234-6789 영업시간 9:00 ~ 21:00
INSERT INTO kh_cafe (c_id,c_name,c_address,c_phone,c_time)
VALUES(8,'이디야커피','서울시 송파구 잠실동','02-1234-6789','영업시간 9:00 ~ 21:00');

-- 저장된 내용보기
SELECT * FROM kh_cafe;

/*
SELECT : 저장된 데이터를 볼 때 사용
 -> 로그인, 게시판 글가져오기, 회원정보, 회사 내 직원정보,급여내역,스터디명단블로그
SELECT 어떤칼럼을볼지선택 FROM 어느테이블에서가져올지테이블명작성

한 테이블에 있는 모든 컬럼을 보겠다
SELECT * FROM 테이블이름;

한 테이블에서 특정된 컬럼만 보겠다
SELECT C_NAME FROM 테이블이름;

한 테이블에서 특정된 컬럼들만 보겠다
SELECT C_NAME, C_ADDRESS FROM 테이블이름;

*/

SELECT C_NAME FROM kh_cafe;

SELECT C_ADDRESS FROM kh_cafe;

SELECT C_NAME,C_ADDRESS FROM kh_cafe;

--MEMBER 테이블 모두 보기

SELECT * FROM member;

--MEMBER 테이블 이름만 보기
SELECT M_NAME FROM member;

--MEMBER 테이블 이름 나이보기
SELECT M_NAME,M_AGE FROM member;

--MEMBER 테이블 이름 번호 보기
SELECT M_NAME AS 멤버이름,M_PHONE AS 멤버번호 FROM member;

--AS : ALLAS 별칭 이라는 영어 줄임말

--카페에서 카페이름, 카페번호 보는데 AS 를 사용해서 카페이름 카페번호 표기해서 보여주기
SELECT C_NAME AS 카페이름, C_PHONE AS 카페번호 FROM kh_cafe;



/*
DDL

SQL을 관리하고 구조를 정의하기 위한 명령어의 집합
CREATE ALTWE DROP
CREATE USER ID를 만들거나, TABLE을 만들 때 대표적으로 많이 사용
ALTER USER 에 대한 정보나, TABLE명을 수정할 때 사용
DROP USER에 대한 정보를 삭제하거나, TABLE명을 삭제할 때 사용

DML
   데이터베이스의 데이터를 조작하기 위한 SQL 명령어 집합
   
   INSERT UPDATE DELEDTE SELECT 등이 존재
   
   INSERT : 테이블에 새로운 행을 삽입 row 삽입
        기본 문법 : INSERT INTO 테이블명(컬럼1, 컬럼2, ...)VALUES(값1,값2,...);
   UPDATE : 테이블에 기존 데이터를 수정
        기본 문법 : UPDATE 테이블명 SET 컬럼1 = 변경할값1,컬럼2 = 변경할값2, ...WHERE 조건;

   DELETE : 테이블에서 데이터를 삭제
      기본 문법 : DELETE 테이블명 WHERE 조건;
                테이블에서 삭제하고자 하는 조건을 선택해서 삭제
    SELECT : 테이블에서 데이터를 조회
      기본 문법 : SELECT *(모두선택) FROM 테이블명;
                    테이블에 적혀있는 모든 내용을 보겠다라는 의미
                SELECT 컬럼1, 컬럼명2, ...FROM 테이블명;
                 테이블에서 원하는 컬럼을 선택해서 보겠다는 의미
                SELECT 컬럼명1 AS 별칭1, 컬럼명2 AS 별칭2, ...FROM 테이블명;
                 테이블에서 원하는 컬럼에 별칭을 붙여 출력하겠다는 의미
*/


















