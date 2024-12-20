--MEMBER DML

DROP TABLE MEMBER;

CREATE TABLE MEMBER(
     MEMBER_NO NUMBER(10)
    ,MEMBER_ID VARCHAR2(100) NOT NULL
    ,MEMBER_PW VARCHAR2(100) NOT NULL
    ,MEMBER_NAME VARCHAR2(100) NOT NULL
    ,MEMBER_BIRTH_DATE VARCHAR2(20) NOT NULL
    ,MEMBER_PHONE_NUM VARCHAR2(30) NOT NULL
    ,MEMBER_ZIP_CODE VARCHAR2(20) NOT NULL
    ,MEMBER_ADDRESS VARCHAR2(200) NOT NULL
    ,MEMBER_ADDRESS_INFO VARCHAR2(200)
    ,MEMBER_GENDER NUMBER(4) NOT NULL
    ,MEMBER_CREDATE DATE DEFAULT SYSDATE
    ,MEMBER_UPDATE DATE DEFAULT SYSDATE
    ,MEMBER_E_MONEY NUMBER(30) DEFAULT 50000
    ,AUTHORITY NUMBER(10) DEFAULT 0 
    ,CONSTRAINT MEMBER_NO_PK PRIMARY KEY (MEMBER_NO)
    ,CONSTRAINT MEMBER_ID_UK UNIQUE (MEMBER_ID)
    ,CONSTRAINT MEMBER_PHONE_NUM_UK UNIQUE (MEMBER_PHONE_NUM)
);

DROP SEQUENCE MEMBER_NO_SEQ;

CREATE SEQUENCE MEMBER_NO_SEQ
INCREMENT BY 1
START WITH 1; 

SELECT *
FROM DBA_SEQUENCES
WHERE SEQUENCE_NAME = 'MEMBER_NO_SEQ';

INSERT INTO MEMBER(MEMBER_NO, MEMBER_ID, MEMBER_PW, MEMBER_NAME, MEMBER_BIRTH_DATE, MEMBER_PHONE_NUM, MEMBER_ZIP_CODE, MEMBER_ADDRESS, MEMBER_ADDRESS_INFO
                   ,MEMBER_GENDER, MEMBER_E_MONEY, AUTHORITY)
VALUES(MEMBER_NO_SEQ.NEXTVAL, 'admin', 'admin1234', '관리자', '19960227', '01064348673', '08545', '구로구 구로동', '구로아카데미', '1', 0, '1');

INSERT INTO MEMBER(MEMBER_NO, MEMBER_ID, MEMBER_PW, MEMBER_NAME, MEMBER_BIRTH_DATE, MEMBER_PHONE_NUM, MEMBER_ZIP_CODE, MEMBER_ADDRESS, MEMBER_ADDRESS_INFO
                   ,MEMBER_GENDER, MEMBER_E_MONEY, AUTHORITY)
VALUES(MEMBER_NO_SEQ.NEXTVAL, 'qwer', 'qwer1234', '김진우', '19900713', '01057465124', '08545', '구로구 구로동', '구로아카데미', '1', 0, '0');

INSERT INTO MEMBER(MEMBER_NO, MEMBER_ID, MEMBER_PW, MEMBER_NAME, MEMBER_BIRTH_DATE, MEMBER_PHONE_NUM, MEMBER_ZIP_CODE, MEMBER_ADDRESS, MEMBER_ADDRESS_INFO
                   ,MEMBER_GENDER, MEMBER_E_MONEY, AUTHORITY)
VALUES(MEMBER_NO_SEQ.NEXTVAL, 'asdf', 'asdf1234', '이수영', '19970713', '01095745124', '08545', '구로구 구로동', '구로아카데미', '2', 0, '0');

-- 더미데이터
INSERT INTO MEMBER(MEMBER_NO, MEMBER_ID, MEMBER_PW, MEMBER_NAME, MEMBER_BIRTH_DATE, MEMBER_PHONE_NUM, MEMBER_ZIP_CODE, MEMBER_ADDRESS, MEMBER_ADDRESS_INFO, MEMBER_GENDER, MEMBER_E_MONEY, AUTHORITY)
VALUES(MEMBER_NO_SEQ.NEXTVAL, 'aaaa', 'aaaa1234', '김철수', '19850315', '01012345678', '06253', '서울시 강남구', '테헤란로 152', 1, 50000, 0);

INSERT INTO MEMBER(MEMBER_NO, MEMBER_ID, MEMBER_PW, MEMBER_NAME, MEMBER_BIRTH_DATE, MEMBER_PHONE_NUM, MEMBER_ZIP_CODE, MEMBER_ADDRESS, MEMBER_ADDRESS_INFO, MEMBER_GENDER, MEMBER_E_MONEY, AUTHORITY)
VALUES(MEMBER_NO_SEQ.NEXTVAL, 'bbbb', 'bbbb1234', '이영희', '19900422', '01023456789', '05001', '서울시 광진구', '능동로 120', 2, 30000, 0);

INSERT INTO MEMBER(MEMBER_NO, MEMBER_ID, MEMBER_PW, MEMBER_NAME, MEMBER_BIRTH_DATE, MEMBER_PHONE_NUM, MEMBER_ZIP_CODE, MEMBER_ADDRESS, MEMBER_ADDRESS_INFO, MEMBER_GENDER, MEMBER_E_MONEY, AUTHORITY)
VALUES(MEMBER_NO_SEQ.NEXTVAL, 'cccc', 'cccc1234', '박민수', '19880709', '01034567890', '04104', '서울시 마포구', '와우산로 94', 1, 70000, 0);

INSERT INTO MEMBER(MEMBER_NO, MEMBER_ID, MEMBER_PW, MEMBER_NAME, MEMBER_BIRTH_DATE, MEMBER_PHONE_NUM, MEMBER_ZIP_CODE, MEMBER_ADDRESS, MEMBER_ADDRESS_INFO, MEMBER_GENDER, MEMBER_E_MONEY, AUTHORITY)
VALUES(MEMBER_NO_SEQ.NEXTVAL, 'dddd', 'dddd1234', '정수연', '19920518', '01045678901', '03190', '서울시 종로구', '종로 1길 50', 2, 40000, 0);

INSERT INTO MEMBER(MEMBER_NO, MEMBER_ID, MEMBER_PW, MEMBER_NAME, MEMBER_BIRTH_DATE, MEMBER_PHONE_NUM, MEMBER_ZIP_CODE, MEMBER_ADDRESS, MEMBER_ADDRESS_INFO, MEMBER_GENDER, MEMBER_E_MONEY, AUTHORITY)
VALUES(MEMBER_NO_SEQ.NEXTVAL, 'eeee', 'eeee1234', '최재현', '19870203', '01056789012', '08292', '서울시 구로구', '구로동로 43', 1, 60000, 0);

INSERT INTO MEMBER(MEMBER_NO, MEMBER_ID, MEMBER_PW, MEMBER_NAME, MEMBER_BIRTH_DATE, MEMBER_PHONE_NUM, MEMBER_ZIP_CODE, MEMBER_ADDRESS, MEMBER_ADDRESS_INFO, MEMBER_GENDER, MEMBER_E_MONEY, AUTHORITY)
VALUES(MEMBER_NO_SEQ.NEXTVAL, 'ffff', 'ffff1234', '한미영', '19950630', '01067890123', '07011', '서울시 동작구', '상도로 369', 2, 25000, 0);

INSERT INTO MEMBER(MEMBER_NO, MEMBER_ID, MEMBER_PW, MEMBER_NAME, MEMBER_BIRTH_DATE, MEMBER_PHONE_NUM, MEMBER_ZIP_CODE, MEMBER_ADDRESS, MEMBER_ADDRESS_INFO, MEMBER_GENDER, MEMBER_E_MONEY, AUTHORITY)
VALUES(MEMBER_NO_SEQ.NEXTVAL, 'gggg', 'gggg1234', '송태호', '19831112', '01078901234', '05501', '서울시 송파구', '올림픽로 240', 1, 80000, 0);

INSERT INTO MEMBER(MEMBER_NO, MEMBER_ID, MEMBER_PW, MEMBER_NAME, MEMBER_BIRTH_DATE, MEMBER_PHONE_NUM, MEMBER_ZIP_CODE, MEMBER_ADDRESS, MEMBER_ADDRESS_INFO, MEMBER_GENDER, MEMBER_E_MONEY, AUTHORITY)
VALUES(MEMBER_NO_SEQ.NEXTVAL, 'hhhh', 'hhhh1234', '임서연', '19910825', '01089012345', '04524', '서울시 중구', '을지로 66', 2, 35000, 0);

INSERT INTO MEMBER(MEMBER_NO, MEMBER_ID, MEMBER_PW, MEMBER_NAME, MEMBER_BIRTH_DATE, MEMBER_PHONE_NUM, MEMBER_ZIP_CODE, MEMBER_ADDRESS, MEMBER_ADDRESS_INFO, MEMBER_GENDER, MEMBER_E_MONEY, AUTHORITY)
VALUES(MEMBER_NO_SEQ.NEXTVAL, 'iiii', 'iiii1234', '오승훈', '19860407', '01090123456', '06611', '서울시 서초구', '서초대로 77길 55', 1, 55000, 0);

INSERT INTO MEMBER(MEMBER_NO, MEMBER_ID, MEMBER_PW, MEMBER_NAME, MEMBER_BIRTH_DATE, MEMBER_PHONE_NUM, MEMBER_ZIP_CODE, MEMBER_ADDRESS, MEMBER_ADDRESS_INFO, MEMBER_GENDER, MEMBER_E_MONEY, AUTHORITY)
VALUES(MEMBER_NO_SEQ.NEXTVAL, 'jjjj', 'jjjj1234', '윤지원', '19931219', '01001234567', '03048', '서울시 종로구', '청계천로 85', 2, 45000, 0);

INSERT INTO MEMBER(MEMBER_NO, MEMBER_ID, MEMBER_PW, MEMBER_NAME, MEMBER_BIRTH_DATE, MEMBER_PHONE_NUM, MEMBER_ZIP_CODE, MEMBER_ADDRESS, MEMBER_ADDRESS_INFO, MEMBER_GENDER, MEMBER_E_MONEY, AUTHORITY)
VALUES(MEMBER_NO_SEQ.NEXTVAL, 'kkkk', 'kkkk1234', '강동훈', '19840528', '01012345679', '04377', '서울시 용산구', '한강대로 92', 1, 65000, 0);

INSERT INTO MEMBER(MEMBER_NO, MEMBER_ID, MEMBER_PW, MEMBER_NAME, MEMBER_BIRTH_DATE, MEMBER_PHONE_NUM, MEMBER_ZIP_CODE, MEMBER_ADDRESS, MEMBER_ADDRESS_INFO, MEMBER_GENDER, MEMBER_E_MONEY, AUTHORITY)
VALUES(MEMBER_NO_SEQ.NEXTVAL, 'llll', 'llll1234', '조민지', '19970214', '01023456780', '07803', '서울시 강서구', '화곡로 302', 2, 20000, 0);

INSERT INTO MEMBER(MEMBER_NO, MEMBER_ID, MEMBER_PW, MEMBER_NAME, MEMBER_BIRTH_DATE, MEMBER_PHONE_NUM, MEMBER_ZIP_CODE, MEMBER_ADDRESS, MEMBER_ADDRESS_INFO, MEMBER_GENDER, MEMBER_E_MONEY, AUTHORITY)
VALUES(MEMBER_NO_SEQ.NEXTVAL, 'mmmm', 'mmmm1234', '백승호', '19891003', '01034567891', '05001', '서울시 광진구', '광나루로 571', 1, 75000, 0);

INSERT INTO MEMBER(MEMBER_NO, MEMBER_ID, MEMBER_PW, MEMBER_NAME, MEMBER_BIRTH_DATE, MEMBER_PHONE_NUM, MEMBER_ZIP_CODE, MEMBER_ADDRESS, MEMBER_ADDRESS_INFO, MEMBER_GENDER, MEMBER_E_MONEY, AUTHORITY)
VALUES(MEMBER_NO_SEQ.NEXTVAL, 'nnnn', 'nnnn1234', '신혜원', '19940711', '01045678902', '06928', '서울시 동작구', '노량진로 74', 2, 30000, 0);

INSERT INTO MEMBER(MEMBER_NO, MEMBER_ID, MEMBER_PW, MEMBER_NAME, MEMBER_BIRTH_DATE, MEMBER_PHONE_NUM, MEMBER_ZIP_CODE, MEMBER_ADDRESS, MEMBER_ADDRESS_INFO, MEMBER_GENDER, MEMBER_E_MONEY, AUTHORITY)
VALUES(MEMBER_NO_SEQ.NEXTVAL, 'oooo', 'oooo1234', '이태준', '19820826', '01056789013', '04516', '서울시 중구', '마른내로 116', 1, 50000, 0);

INSERT INTO MEMBER(MEMBER_NO, MEMBER_ID, MEMBER_PW, MEMBER_NAME, MEMBER_BIRTH_DATE, MEMBER_PHONE_NUM, MEMBER_ZIP_CODE, MEMBER_ADDRESS, MEMBER_ADDRESS_INFO, MEMBER_GENDER, MEMBER_E_MONEY, AUTHORITY)
VALUES(MEMBER_NO_SEQ.NEXTVAL, 'pppp', 'pppp1234', '김지현', '19960103', '01067890124', '05001', '서울시 광진구', '자양로 167', 2, 40000, 0);

INSERT INTO MEMBER(MEMBER_NO, MEMBER_ID, MEMBER_PW, MEMBER_NAME, MEMBER_BIRTH_DATE, MEMBER_PHONE_NUM, MEMBER_ZIP_CODE, MEMBER_ADDRESS, MEMBER_ADDRESS_INFO, MEMBER_GENDER, MEMBER_E_MONEY, AUTHORITY)
VALUES(MEMBER_NO_SEQ.NEXTVAL, 'qqqq', 'qqqq1234', '장민석', '19881215', '01078901235', '06611', '서울시 서초구', '반포대로 58', 1, 70000, 0);

INSERT INTO MEMBER(MEMBER_NO, MEMBER_ID, MEMBER_PW, MEMBER_NAME, MEMBER_BIRTH_DATE, MEMBER_PHONE_NUM, MEMBER_ZIP_CODE, MEMBER_ADDRESS, MEMBER_ADDRESS_INFO, MEMBER_GENDER, MEMBER_E_MONEY, AUTHORITY)
VALUES(MEMBER_NO_SEQ.NEXTVAL, 'rrrr', 'rrrr1234', '홍서영', '19930520', '01089012346', '04104', '서울시 마포구', '월드컵북로 396', 2, 25000, 0);

INSERT INTO MEMBER(MEMBER_NO, MEMBER_ID, MEMBER_PW, MEMBER_NAME, MEMBER_BIRTH_DATE, MEMBER_PHONE_NUM, MEMBER_ZIP_CODE, MEMBER_ADDRESS, MEMBER_ADDRESS_INFO, MEMBER_GENDER, MEMBER_E_MONEY, AUTHORITY)
VALUES(MEMBER_NO_SEQ.NEXTVAL, 'ssss', 'ssss1234', '류정호', '19900308', '01090123457', '03190', '서울시 종로구', '삼일대로 428', 1, 60000, 0);


CREATE OR REPLACE TRIGGER UPDATE_MEMBER_E_MONEY
AFTER INSERT ON MEMBER_E_MONEY
FOR EACH ROW
BEGIN
    UPDATE MEMBER
    SET MEMBER_E_MONEY = MEMBER_E_MONEY + :NEW.MEMBER_E_MONEY_PLUS - :NEW.MEMBER_E_MONEY_MINUS
    WHERE MEMBER_NO = :NEW.MEMBER_NO;
END;
/



SELECT *
FROM MEMBER;

SELECT MEMBER_NO
      ,MEMBER_ID
      ,MEMBER_PW
      ,MEMBER_NAME
      ,MEMBER_BIRTH_DATE
      ,MEMBER_ZIP_CODE
      ,MEMBER_ADDRESS
      ,MEMBER_ADDRESS_INFO
      ,MEMBER_GENDER
      ,MEMBER_CREDATE
      ,MEMBER_UPDATE
      ,MEMBER_E_MONEY
      ,AUTHORITY
FROM MEMBER;

commit;


