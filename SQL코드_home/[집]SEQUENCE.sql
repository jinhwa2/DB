/*SEQUENCE(순서,연속)
--순차적으로 일정한 간격의 숫자(번호)를 발생시키는 객체
(자동번호생성기)

  PK 가 지정된 컬럼에 삽입될 값을 생성할 때 SEQUENCE를 이용하면 좋음
  EX) 1번째 회원, 2번째 회원, 3번째 회원,...
  
  [작성법]
CREATE SEQUENCE 시퀀스이름
[START WITH 숫자] --처음발생시킬 시작값 지정, 생략하면 자동으로 1이 기본값으로 설정
[INCREAMENT BY 숫자] --다음 값에 대한 증가값을 설정, 생략하면 자동으로 1씩 증가로 설정
[MAXVALUE 숫자 | NOMAXVALUE] --발생시킬 최대값 지정
[MINVALUE 숫자 | NOMINVALUE] --발생시킬 최소값 지정 
[CYCLE | NOCYCLE] --값 순환 여부 지정
[CHCHE 바이트크기 | NOCHCHE] --캐쉬메모리 기본값은 20BYTE 최소값은 2BYTE
    --> 시퀀스의 캐시메모리는 할당된 크기만큼 미리 다음 값을 생성해 저장해둠
    -->시퀀스 호출 시 미리 저장되어진 값들을 가져와 반환하므로 매번 시퀀스를 생성해서 반환하
    는 것보다 DB  속도가 향상됨
 
 *사용방법
 시퀀스명.NEXTVAL : 다음 시퀀스 번호 얻어옴
 
 시퀀스명.CURRVAL : 현재 시퀀스 번호를 얻어움
                  주의할점 : 시퀀스가 생성되자마자 호출할 경우 오류 발생
                  --> 마지막으로 호출한 NEXTVAL 값 반환
*/

-- 시퀀스 생성
CREATE TABLE TB_TEXT(
TEST_NO NUMBER PRIMARY KEY, --ORACLE에서 지정한 최대값 설정 38자리
TEST_NAME VARCHAR2(30) NOT NULL
);

ALTER TABLE TB_TEXT RENAME TO TB_TEST;


CREATE SEQUENCE SEQ_TEST_NO
START WITH 100   --시작번호100
INCREMENT BY 5 --NEXTVAL 호출마다 5씩 증가
MAXVALUE 150
NOMINVALUE
NOCYCLE  --QKSQHRDJQTDMA
NOCACHE  --미리 생성해두는 시퀀스 번호 없음
; 
  
INSERT INTO TB_TEXT VALUES(seq_test_no.nextval,'홍길동');
SELECT *FROM TB_TEXT;

INSERT INTO TB_TEXT VALUES(seq_test_no.nextval,'김영희');

INSERT INTO TB_TEXT VALUES(seq_test_no.nextval,'박철수');
  
 --시퀀스 값 변경(ALTER)
 -->CREATE 구문과 똑가지만 STRART WITH 옵션은 제외됨
 
 ALTER SEQUENCE SEQ_TEST_NO
 MAXVALUE 200;
  
  
  
  
  
  
  
  