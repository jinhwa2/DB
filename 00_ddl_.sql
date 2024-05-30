-- �ּ� �ۼ��ϱ� ����Ű ctrl +shift+/ /
/* ���� �ּ� �ۼ��ϱ�  */ 

-- CMD â���� ��ǥ �������� �������� SQL �����ϴ� ��ɾ�

/*
sqlplus   : ����Ŭ ������ ���̽����� �����ϴ� ����� ����
sys       : �ý���(system) �����
as sysdba : �ý��۵����ͺ��̽�����(SYStem DataBase Admin)
��ġ�� �� �ۼ��� ��й�ȣ �ۼ��ϱ�
��й�ȣ�� ���� ������ ����
*/
sqlplus sys as sysdba;

-- �������� ������ �����ϱ� ���� ALTER �̿��ؼ�
--SCRIPT TURE�� �������־����� ������ ���� �ʾƵ� ��
/*
ALTER   : � ��Ȳ�� �����ϴ� SQL ��ɾ� 
SESSION : ����ڰ� �α����ؼ� ����� �����ϰ� ����� ����
SET     : ������ ������ ������ ����

_ORACLE_SCRIPT" : DB �ڵ� �ۼ�
TRUE;           : ����ϰڴ�.


*/



ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;

-- ���� ���� ���
/*
CREATE  : �����ϰڴ�.
USER    :����ڸ�
���̵�� :������̸�
IDENTIFIED BY : ������ ����ڰ����� ���� ��й�ȣ�� �����ϱ� ���� �ڵ� 
��й�ȣ : ��й�ȣ����
*/
CREATE USER ���̵�� IDENTIFIED BY ��й�ȣ;


/*
GRANT    : ����ڿ��� Ư�� �����̳� ������ �ο��ϱ� ���� ��ɾ�
CONNECT  : ����ڰ� �����ͺ��̽��� ������ �� �ִ� ���� �ο�
           -> KH T �ݿ� ���� �� �ִ� ����
RESOURCE : ���̺�, �ε���, �� ���� ������ �� �ִ� ����
           -> T �ݿ��� Ư�� �ൿ�̳� ����� ���� ���� �� �� �ִ� ����
�̿� �������� ���� ���� ������ �������� �� ���� �ۼ��� ���� , ����ؼ� �ۼ�
TO ���̵��; : � ���̵� ������ �� ������ ����


*/

--������ ������ ���� + �⺻ �ڿ� ���� ���� �߰�
GRANT CONNECT, RESOURCE TO ���̵��;

/* ���̺��� �����ϱ�
���̺��̶� ? ������ ���̽� ��� �����͸� �����ϴ� ����
  ���̺�� : �����̵Ǿ� ������ ���õ� ������ ������ �� �ֵ��� �ۼ�
  
�����ϴ� ���
CREATE TABLE ���̺�� (�÷��� ������Ÿ��);
*/

-- ���� ���̺� �����ϱ�

CREATE TABLE ���� (������ȣ NUMBER(4), �����̸� VARCHAR2(10);

/*
������ Ÿ��
NUMBER   : ���ڰ�
VARCHAR2 : String�� �Ȱ��� ���ڿ�
*/
-- ������ �߰��ϱ� INSERT
/*
�����͸� �߰��� ���� INSERT �� �ۼ����ش�.

�ۼ����
INSERT INTO ���̺��(�÷���1,�÷���2,�ķ���3,...)VALUES (���߿��ش��ϴ� ��1, 
�÷����ش��ϴ°�2,
�÷����ش��ϴ°�3,...);                                                                                                                                                                                                                                                                                                                   
*/

INSERT INTO MEMBER (M_ID, M_NAME,M_AGE,M_PHONE,M_DATE)VALUES (1,'ȫ�浿', '40','1234567890','2024-05-01');


CREATE TABLE MEMBER 
(
  M_ID NUMBER(10, 0) 
, M_NAME VARCHAR2(25 BYTE) 
, M_AGE VARCHAR2(20 BYTE) 
, M_PHONE VARCHAR2(11 BYTE) 
, M_DATE VARCHAR2(255 BYTE) 
) 




INSERT INTO MEMBER (M_ID, M_NAME,M_AGE,M_PHONE,M_DATE)VALUES (2,'������', '35','1234567890','2024-05-02');

INSERT INTO MEMBER (M_ID, M_NAME,M_AGE,M_PHONE,M_DATE)VALUES (3,'��ö��', '32','1234567892','2024-05-03');


-- 4�� �̿��� 37 1234567893 2024-05-04
INSERT INTO MEMBER (M_ID, M_NAME,M_AGE,M_PHONE,M_DATE)VALUES (4,'�̿���', '37','1234567893','2024-05-04');
-- 5�� �ֹμ� 29 1234567894 2024-05-05
INSERT INTO MEMBER (M_ID, M_NAME,M_AGE,M_PHONE,M_DATE)
VALUES (5,'�ֹμ�', '37','1234567894','2024-05-05');
-- 6�� ������ 33 1234567895 2024-05-06
INSERT INTO MEMBER (M_ID, M_NAME,M_AGE,M_PHONE,M_DATE)
VALUES (6,'������', '37','1234567895','2024-05-06');


--KH CAFE �߰��ϱ�
INSERT INTO kh_cafe (C_ID, C_NAME, C_ADDRESS, C_PHONE, C_TIME) 
VALUES (1, '�ް�Ŀ��', '����� ������ ������', '02-888-8888', '�����ð� : 9:00 ~ 18:00');

--�ǽ�1
INSERT INTO MENU  (MENU_ID, MENU_NAME, MENU_DESC, MENU_PRICE) 
VALUES (1, '�Ƹ޸�ī��', '�ż��� ������ ���� �Ƹ޸�ī��','3000');

INSERT INTO MENU  (MENU_ID, MENU_NAME, MENU_DESC, MENU_PRICE) 
VALUES (2, 'ī���', '�ε巯�� ������ �� ��','3500');

INSERT INTO MENU  (MENU_ID, MENU_NAME, MENU_DESC, MENU_PRICE) 
VALUES (3, 'īǪġ��', '���� Ŀ�ǿ� ��ǰ�� ��췯�� īǪġ��','3500');

INSERT INTO MENU  (MENU_ID, MENU_NAME, MENU_DESC, MENU_PRICE) 
VALUES (4, 'ī��� ��Ű�Ƴ�', '������ ī��� �÷��� �� ��Ű����','4000');

INSERT INTO MENU  (MENU_ID, MENU_NAME, MENU_DESC, MENU_PRICE) 
VALUES (5, '����������', '���� ���� ���� ����������','2500');











