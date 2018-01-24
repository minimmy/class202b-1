--1. 아래 작업을 sys계정으로 로그인하여 수행. class202b 계정을 생성함. 

alter session set "_ORACLE_SCRIPT"=true;

-- USER SQL
CREATE USER class202b IDENTIFIED BY "class202b"  
DEFAULT TABLESPACE "USERS"
TEMPORARY TABLESPACE "TEMP";

-- QUOTAS
ALTER USER class202b QUOTA UNLIMITED ON USERS;

-- ROLES
GRANT "CONNECT" TO class202b ;
GRANT "RESOURCE" TO class202b ;

-- SYSTEM PRIVILEGES

--------------------------------------------------------
--------------------------------------------------------
--------------------------------------------------------
--------------------------------------------------------
--------------------------------------------------------
--------------------------------------------------------
--------------------------------------------------------
--------------------------------------------------------
--2.class202b 로 로그인해서 아래 스크립트 실행. 


--------------------------------------------------------
--  파일이 생성됨 - 금요일-1월-05-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ADMIN
--------------------------------------------------------

  CREATE TABLE "ADMIN" 
   (	"ADMIN_ID" VARCHAR2(16 BYTE), 
	"ADMIN_PWD" VARCHAR2(16 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BOOKMARK
--------------------------------------------------------

  CREATE TABLE "BOOKMARK" 
   (	"MEM_ID" VARCHAR2(16 BYTE), 
	"CTGR" VARCHAR2(9 BYTE), 
	"GROUP_ID" VARCHAR2(25 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BOOK_GROUP
--------------------------------------------------------

  CREATE TABLE "BOOK_GROUP" 
   (	"MEM_ID" VARCHAR2(16 BYTE), 
	"GROUP_ID" VARCHAR2(25 BYTE), 
	"GROUP_NM" VARCHAR2(128 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
 

   COMMENT ON COLUMN "BOOK_GROUP"."GROUP_ID" IS 'memId+4digit';
--------------------------------------------------------
--  DDL for Table CMMT
--------------------------------------------------------

  CREATE TABLE "CMMT" 
   (	"MEM_ID" VARCHAR2(16 BYTE), 
	"CMMT_ID" VARCHAR2(30 BYTE), 
	"CMMT_CONT" VARCHAR2(600 BYTE), 
	"CMMT_WTIME" VARCHAR2(30 BYTE), 
	"VIDEO_ID" VARCHAR2(8 BYTE), 
	"EVENT_ID" VARCHAR2(8 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CODE_TABLE
--------------------------------------------------------

  CREATE TABLE "CODE_TABLE" 
   (	"MAIN_CODE" VARCHAR2(4 BYTE), 
	"MAIN_CODE_NM" VARCHAR2(4 BYTE), 
	"SUB_CODE" VARCHAR2(4 BYTE), 
	"SUB_CODE_NM" VARCHAR2(4 BYTE), 
	"USED" VARCHAR2(4 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EVENT
--------------------------------------------------------

  CREATE TABLE "EVENT" 
   (	"EVENT_ID" VARCHAR2(8 BYTE), 
	"EVENT_TITLE" VARCHAR2(100 BYTE), 
	"EVENT_TEACHER" VARCHAR2(40 BYTE), 
	"EVENT_CLASS" VARCHAR2(15 BYTE), 
	"EVENT_START" VARCHAR2(8 BYTE), 
	"EVENT_END" VARCHAR2(8 BYTE), 
	"EVENT_ATTEND" NUMBER(4,0), 
	"EVENT_LOC" VARCHAR2(250 BYTE), 
	"EVENT_CONT" VARCHAR2(4000 BYTE), 
	"DEL" VARCHAR2(1 BYTE) DEFAULT 'Y'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FILE_TABLE
--------------------------------------------------------

  CREATE TABLE "FILE_TABLE" 
   (	"FILE_ID" VARCHAR2(10 BYTE), 
	"FILE_NM" VARCHAR2(255 BYTE), 
	"UPLOADED_NM" VARCHAR2(255 BYTE), 
	"FILE_TYPE" VARCHAR2(255 BYTE), 
	"FILE_LINK" VARCHAR2(255 BYTE), 
	"FILE_SIZE" VARCHAR2(255 BYTE), 
	"VIDEO_ID" VARCHAR2(8 BYTE), 
	"EVENT_ID" VARCHAR2(8 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table IDS
--------------------------------------------------------

  CREATE TABLE "IDS" 
   (	"TABLE_NAME" VARCHAR2(20 BYTE), 
	"NEXT_ID" NUMBER(30,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "MEMBER" 
   (	"MEM_ID" VARCHAR2(16 BYTE), 
	"MEM_PWD" VARCHAR2(16 BYTE), 
	"MEM_EMAIL" VARCHAR2(40 BYTE), 
	"MEM_NM" VARCHAR2(30 BYTE), 
	"MEM_BIRTHDATE" VARCHAR2(8 BYTE), 
	"MEM_PHONE" VARCHAR2(15 BYTE), 
	"MEM_GENDER" VARCHAR2(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table VIDEO
--------------------------------------------------------

  CREATE TABLE "VIDEO" 
   (	"VIDEO_ID" VARCHAR2(8 BYTE), 
	"VIDEO_TITLE" VARCHAR2(100 BYTE), 
	"VIDEO_CONT" VARCHAR2(4000 BYTE), 
	"VIDEO_URL" VARCHAR2(100 BYTE), 
	"VIDEO_WTIME" VARCHAR2(30 BYTE), 
	"VIDEO_THUMB" VARCHAR2(255 BYTE), 
	"DEL" VARCHAR2(1 BYTE) DEFAULT 'Y'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

REM INSERTING into ADMIN
SET DEFINE OFF;
REM INSERTING into BOOKMARK
SET DEFINE OFF;
Insert into BOOKMARK (MEM_ID,CTGR,GROUP_ID) values ('mem01','SPT00006',null);
Insert into BOOKMARK (MEM_ID,CTGR,GROUP_ID) values ('mem01','CHP00002',null);
Insert into BOOKMARK (MEM_ID,CTGR,GROUP_ID) values ('mem01','DEF00004',null);
Insert into BOOKMARK (MEM_ID,CTGR,GROUP_ID) values ('jiu123','SPT00003',null);
Insert into BOOKMARK (MEM_ID,CTGR,GROUP_ID) values ('jiu123','SPT00005','jiu123_0001');
Insert into BOOKMARK (MEM_ID,CTGR,GROUP_ID) values ('jiu123','SPT00006',null);
Insert into BOOKMARK (MEM_ID,CTGR,GROUP_ID) values ('jurujuru','CHP00002',null);
Insert into BOOKMARK (MEM_ID,CTGR,GROUP_ID) values ('jurujuru','CHP00004',null);
Insert into BOOKMARK (MEM_ID,CTGR,GROUP_ID) values ('jurujuru','SPT00005',null);
Insert into BOOKMARK (MEM_ID,CTGR,GROUP_ID) values ('jurujuru','DEF00004',null);
Insert into BOOKMARK (MEM_ID,CTGR,GROUP_ID) values ('mem01','SEN00005',null);
Insert into BOOKMARK (MEM_ID,CTGR,GROUP_ID) values ('mem01','CHP00004',null);
Insert into BOOKMARK (MEM_ID,CTGR,GROUP_ID) values ('mem01','DEF00005',null);
REM INSERTING into BOOK_GROUP
SET DEFINE OFF;
Insert into BOOK_GROUP (MEM_ID,GROUP_ID,GROUP_NM) values ('mem01','mem01_0001','암바마스터');
Insert into BOOK_GROUP (MEM_ID,GROUP_ID,GROUP_NM) values ('jiu123','jiu123_0001','대회영상들');
REM INSERTING into CMMT
SET DEFINE OFF;
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','18/01/03 14:46:34:024794','안녕하세요','18/01/03 14:46:34:024794',null,'SEN00003');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','17/12/22 17:37:00:588419','문신','17/12/22 17:37:00:588419','DEF00002',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jurujuru','17/12/20 12:46','열공 해라 .. 아이 씨유','17/12/20 12:46','SPT00006',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','17/12/28 17:33:08:152092','ffedfsdf','17/12/28 17:33:08:152092','SPT00005',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','17/12/29 17:43:09:590587',null,'17/12/29 17:43:09:590587',null,'CHP00003');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','17/12/13 15:12:27:580220','내가 더 잘하겠네','17/12/13 15:12:27:580220','SPT00003',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','17/12/20 13:01:19:092269','좋아요','17/12/20 13:01:19:092269',null,'SEN00002');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jurujuru','17/12/20 13:01:42:361908','123535146146','17/12/20 13:01:42:361908','SPT00006',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','17/12/20 16:07','ㅇㄴㅇㄴ','17/12/20 16:07','DEF00005',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','17/12/20 16:09:59:077809','ㅁㅁ','17/12/20 16:09:59:077809',null,'SEN00002');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','17/12/13 16:26:25:057943','234234','17/12/13 16:26:25:057943',null,null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jurujuru','17/12/22 16:04:16:583648','123','17/12/22 16:04:16:583648','SPT00006',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jurujuru','17/12/20 16:24:05:061724','ㅈㅁㅇㅁ','17/12/20 16:24:05:061724','SPT00006',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jurujuru','17/12/20 16:31:26','날짜 너무 짧아서 초까지 했어요','17/12/20 16:31:26','SPT00006',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jurujuru','17/12/20 18:13:59:870877','asdfffffffffffsddsfdsfa','17/12/20 18:13:59:870877','SPT00006',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','17/12/22 14:58:25:242865','asgdasd','17/12/22 14:58:25:242865','DEF00005',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jurujuru','17/12/27 15:56:39:380576','test test','17/12/27 15:56:39:380576','SPT00006',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jurujuru','17/12/27 15:58:45:826924','asd','17/12/27 15:58:45:826924','SPT00006',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','17/12/14 17:29:57:705116','Sed tempus gravida cursus. Curabitur ut blandit enim.','17/12/14 17:29:57:705116','DEF00002',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','17/12/14 17:30:03:396502','Curabitur blandit odio at nulla eleifend rutrum.','17/12/14 17:30:03:396502','DEF00002',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','17/12/14 17:43:21:640109','sadfkasgkasklg;ja;sdlkgjak;lsdgja;sdg','17/12/14 17:43:21:640109','DEF00002',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','17/12/13 11:11:26:162737','test insert','17/12/13 11:11:26:162737',null,null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','000005','Duis eget lorem et eros tristique venenatis.','17/12/12 18:23:28:472500',null,'CHP00001');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','000007','Maecenas sit amet dolor vel orci accumsan blandit.','17/12/12 18:23:32:633061',null,'CHP00003');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','000008','Nam luctus velit quis odio sollicitudin, id laoreet risus venenatis.','17/12/12 18:23:32:644360',null,'CHP00004');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','000010','Duis mattis neque faucibus tellus malesuada, vel pretium eros congue.','17/12/12 18:23:38:877290','DEF00003',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','000011','Aenean rutrum mauris vel massa molestie, ac sollicitudin leo eleifend.','17/12/12 18:23:38:888582','SPT00003',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','000012','Duis sagittis tellus at finibus porttitor.','17/12/12 18:23:38:898479','SPT00005',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','000014','Curabitur tristique lorem id eros molestie commodo.','17/12/12 18:23:38:920384','SPT00004',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','000016','Sed interdum nisl non massa placerat porta quis vel felis.','17/12/12 18:23:38:940160','DEF00005',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','000017','Cras vulputate neque non velit maximus sagittis.','17/12/12 18:23:38:946909','SPT00002',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jurujuru','000022','Nam at augue nec augue viverra vehicula quis ut quam.','17/12/12 18:24:06:264717',null,'CHP00001');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jurujuru','000023','Integer rutrum odio vitae erat viverra dignissim.','17/12/12 18:24:10:396798',null,'CHP00002');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jurujuru','000024','In placerat mauris sodales, auctor diam vel, accumsan nibh.','17/12/12 18:24:14:602527',null,'CHP00003');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jurujuru','000025','Proin congue urna molestie lorem aliquet luctus.','17/12/12 18:24:20:020620',null,'CHP00004');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jurujuru','000027','Curabitur volutpat sem a elementum iaculis.','17/12/12 18:24:29:598034','DEF00003','SEN00002');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jurujuru','000028','Fusce iaculis ligula blandit erat aliquam, in maximus ante eleifend.','17/12/12 18:24:29:609510','SPT00003','SEN00001');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jurujuru','000029','Phasellus bibendum ex at dui blandit, in suscipit lectus hendrerit.','17/12/12 18:24:29:615456','SPT00005','SEN00001');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jurujuru','000031','Nam sit amet nulla dapibus, ullamcorper urna sed, tempus magna.','17/12/12 18:24:34:197041','SPT00004','SEN00002');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jurujuru','000032','Ut in mauris non sem dignissim hendrerit.','17/12/12 18:24:34:207736','DEF00004','SEN00002');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jurujuru','000033','Ut pellentesque dolor eget faucibus blandit.','17/12/12 18:24:34:215159','DEF00005',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jurujuru','000034','Aenean vitae diam sed velit semper feugiat.','17/12/12 18:24:38:961139','SPT00002',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jiu123','000035','Donec blandit ligula nec massa vulputate commodo.','17/12/12 18:24:38:968157','SPT00002',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jiu123','000036','Curabitur sed ante venenatis, efficitur ligula eget, auctor ipsum.','17/12/12 18:24:43:427859','DEF00005',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jiu123','000037','Mauris nec risus tristique, auctor erat eu, vulputate risus.','17/12/12 18:24:43:439204','DEF00004',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jiu123','000038','Aliquam semper orci quis mi ullamcorper, vel hendrerit nisi fringilla.','17/12/12 18:24:43:449353','SPT00004',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jiu123','000040','Curabitur eget massa venenatis nisl consequat convallis eget vel lacus.','17/12/12 18:24:48:427525','SPT00005',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jiu123','000041','Fusce blandit mi sit amet nibh blandit euismod.','17/12/12 18:24:48:438892','SPT00003',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jiu123','000042','Nulla sed magna nec purus porttitor ullamcorper.','17/12/12 18:24:48:449050','DEF00003',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jiu123','000044','Praesent ultricies massa a tempor hendrerit.','17/12/12 18:24:48:468454',null,'CHP00004');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jiu123','000045','Nullam tristique mi at urna euismod, in lacinia erat pretium.','17/12/12 18:24:48:480825',null,'CHP00003');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jiu123','000046','Fusce eget eros a leo blandit hendrerit eget eu leo.','17/12/12 18:24:52:576562',null,'CHP00002');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jiu123','000047','Phasellus non lacus a felis dignissim tempus.','17/12/12 18:24:52:591896',null,'CHP00001');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','17/12/20 12:21:21:362093','fgdgd','17/12/20 12:21:21:362093',null,'CHP00001');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','17/12/20 12:21:52:462471','kjh','17/12/20 12:21:52:462471',null,'CHP00001');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','17/12/20','날짜 너무 길어서 바꿨습니다','17/12/20','SPT00006',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','17/12/22 16:06:29:476643','하이염','17/12/22 16:06:29:476643',null,'CHP00002');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','17/12/22 16:11:19:286454','하이염','17/12/22 16:11:19:286454',null,'CHP00002');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','17/12/22 16:59:22:048402',null,'17/12/22 16:59:22:048402','SPT00003',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','17/12/22 16:59:32:099918',null,'17/12/22 16:59:32:099918','SPT00003',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','17/12/20 16:13:36:093502','ㄹㅇㄹ','17/12/20 16:13:36:093502',null,'SEN00002');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','17/12/20 16:14:11:154729','ㅋ','17/12/20 16:14:11:154729',null,'SEN00002');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','17/12/20 16:14:20:620339','굿','17/12/20 16:14:20:620339',null,'SEN00001');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','17/12/20 16:14:24:858316','맨','17/12/20 16:14:24:858316',null,'SEN00001');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','18/01/02 17:56:55:318673','ㅇㅀㄹㅇㅎㄹㅇㅎㅇㅀ','18/01/02 17:56:55:318673',null,'SEN00004');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jurujuru','17/12/21 18:14:49:161772','보았느냐 이태양
','17/12/21 18:14:49:161772','SPT00005',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','17/12/22 15:55:01:771271','안녕하세요','17/12/22 15:55:01:771271',null,'CHP00002');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','17/12/22 15:55:39:985917','ㄴㄹㅇㄹㄹ','17/12/22 15:55:39:985917',null,'CHP00003');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','17/12/22 15:59:25:951737','안녕하세요','17/12/22 15:59:25:951737',null,'CHP00002');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','17/12/22 16:01:01:994647','안녕하세요','17/12/22 16:01:01:994647',null,'CHP00002');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','17/12/22 16:01:16:696396','안녕하세요','17/12/22 16:01:16:696396',null,'CHP00002');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jurujuru','17/12/27 16:07:57:829311','sadf','17/12/27 16:07:57:829311','SPT00006',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','18/01/03 18:10:49:096036','ㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎ','18/01/03 18:10:49:096036',null,'SEN00005');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','18/01/03 15:19:49:617580','안녕하세요','18/01/03 15:19:49:617580',null,'SEN00004');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('love','18/01/02 17:44:03:762405','우준♥!','18/01/02 17:44:03:762405','SPT00006',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('mem01','18/01/03 18:10:39:775558','ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ','18/01/03 18:10:39:775558',null,'SEN00006');
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jurujuru','17/12/27 16:10:24:738492','sdfdsf','17/12/27 16:10:24:738492','SPT00006',null);
Insert into CMMT (MEM_ID,CMMT_ID,CMMT_CONT,CMMT_WTIME,VIDEO_ID,EVENT_ID) values ('jurujuru','17/12/27 16:11:45:826594','1234','17/12/27 16:11:45:826594','SPT00006',null);
REM INSERTING into CODE_TABLE
SET DEFINE OFF;
REM INSERTING into EVENT
SET DEFINE OFF;
Insert into EVENT (EVENT_ID,EVENT_TITLE,EVENT_TEACHER,EVENT_CLASS,EVENT_START,EVENT_END,EVENT_ATTEND,EVENT_LOC,EVENT_CONT,DEL) values ('CHP00011','전국 주짓수 배',null,null,'20171222','20171225',null,'서울체육관','ㄴㄴㅁㅇㅁㄴㅇ',null);
Insert into EVENT (EVENT_ID,EVENT_TITLE,EVENT_TEACHER,EVENT_CLASS,EVENT_START,EVENT_END,EVENT_ATTEND,EVENT_LOC,EVENT_CONT,DEL) values ('SEN00020','이희성세미나','이희성',null,'20171222',null,20,'서울체육관','ㄴㅇㄹㅇㄹ',null);
Insert into EVENT (EVENT_ID,EVENT_TITLE,EVENT_TEACHER,EVENT_CLASS,EVENT_START,EVENT_END,EVENT_ATTEND,EVENT_LOC,EVENT_CONT,DEL) values ('CHP00014','갓오하',null,'null','20171222','20171225',null,'서울 체육관',null,null);
Insert into EVENT (EVENT_ID,EVENT_TITLE,EVENT_TEACHER,EVENT_CLASS,EVENT_START,EVENT_END,EVENT_ATTEND,EVENT_LOC,EVENT_CONT,DEL) values ('SEN00003','세미나3','곽백수',null,'20120708',null,212,'80','666','Y');
Insert into EVENT (EVENT_ID,EVENT_TITLE,EVENT_TEACHER,EVENT_CLASS,EVENT_START,EVENT_END,EVENT_ATTEND,EVENT_LOC,EVENT_CONT,DEL) values ('SEN00002','세미나2','산쪼메',null,'20151212',null,100,'도쿄','도쿄','Y');
Insert into EVENT (EVENT_ID,EVENT_TITLE,EVENT_TEACHER,EVENT_CLASS,EVENT_START,EVENT_END,EVENT_ATTEND,EVENT_LOC,EVENT_CONT,DEL) values ('SEN00004','세미나4','소세지',null,'20170530',null,60,'독일','ㅁㅇㄹㄴㄹ','Y');
Insert into EVENT (EVENT_ID,EVENT_TITLE,EVENT_TEACHER,EVENT_CLASS,EVENT_START,EVENT_END,EVENT_ATTEND,EVENT_LOC,EVENT_CONT,DEL) values ('CHP00001','갓오브하이스쿨',null,'전체','20171222','20171225',120,'서울체육관','ㄶㄹㄴㅇㄹ','Y');
Insert into EVENT (EVENT_ID,EVENT_TITLE,EVENT_TEACHER,EVENT_CLASS,EVENT_START,EVENT_END,EVENT_ATTEND,EVENT_LOC,EVENT_CONT,DEL) values ('CHP00002','대회2',null,'전체급',null,null,300,'전주','Nullam diam ex, malesuada in suscipit ac, imperdiet eget diam. Sed sit amet augue at mi ultrices finibus dictum et neque. Sed eu fermentum orci, in placerat ante. Nam pretium nisi sit amet sem scelerisque varius. Integer id leo nec elit faucibus volutpat sit amet in nunc. Nulla bibendum, libero non pretium mollis, est lacus porttitor libero, non fermentum dolor orci non dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean euismod rutrum lorem sodales gravida. Quisque enim lacus, laoreet sed quam ut, finibus rutrum justo. Cras pulvinar velit quis mauris scelerisque semper. Morbi vitae justo convallis, tempor felis et, congue diam. In sagittis metus non dictum pellentesque. Mauris a eleifend velit. Integer aliquet ipsum in velit dictum, dictum consequat nulla cras amet.','Y');
Insert into EVENT (EVENT_ID,EVENT_TITLE,EVENT_TEACHER,EVENT_CLASS,EVENT_START,EVENT_END,EVENT_ATTEND,EVENT_LOC,EVENT_CONT,DEL) values ('CHP00003','대회3',null,'전체급',null,null,450,'목포','Sed varius ut nibh nec facilisis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris eu porttitor leo. Vestibulum semper sit amet nisl eget dignissim. Pellentesque id ligula gravida, fringilla massa et, pellentesque metus. In porta ac magna eget faucibus. Phasellus sit amet varius nisi. Integer at mollis nibh. Aenean urna orci, mattis ac dui a, porta gravida diam. Etiam dapibus congue felis interdum pulvinar. Vestibulum sed turpis nec sapien consequat gravida nec eu lacus. Sed dapibus iaculis massa, vitae tempus magna bibendum non. Phasellus hendrerit commodo odio vel consectetur.','Y');
Insert into EVENT (EVENT_ID,EVENT_TITLE,EVENT_TEACHER,EVENT_CLASS,EVENT_START,EVENT_END,EVENT_ATTEND,EVENT_LOC,EVENT_CONT,DEL) values ('CHP00004','대회4',null,'전체급',null,null,310,'김포','Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ac ullamcorper metus. Nunc laoreet iaculis placerat. Duis lobortis convallis lectus non auctor. Phasellus nec varius dui, in pretium dui. Fusce molestie varius nunc volutpat tristique. Maecenas bibendum lorem ac magna sagittis dictum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi vehicula pellentesque enim, id sagittis orci aliquam et. Aliquam enim mauris, pulvinar in tortor eu, lacinia tristique ligula. Nam nec pretium risus. Aliquam pellentesque justo ac auctor lacinia.','Y');
Insert into EVENT (EVENT_ID,EVENT_TITLE,EVENT_TEACHER,EVENT_CLASS,EVENT_START,EVENT_END,EVENT_ATTEND,EVENT_LOC,EVENT_CONT,DEL) values ('SEN00006','세미나6','엄지민','라이트','20171212','20171212',35,'수원','ㄴㅇㄹㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴ','Y');
Insert into EVENT (EVENT_ID,EVENT_TITLE,EVENT_TEACHER,EVENT_CLASS,EVENT_START,EVENT_END,EVENT_ATTEND,EVENT_LOC,EVENT_CONT,DEL) values ('SEN00001','세미나1','이태양',null,'20110202',null,200,'서울','서울','Y');
Insert into EVENT (EVENT_ID,EVENT_TITLE,EVENT_TEACHER,EVENT_CLASS,EVENT_START,EVENT_END,EVENT_ATTEND,EVENT_LOC,EVENT_CONT,DEL) values ('SEN00005','세미나5','엄지민','전체','20180101','20180101',20,'서울','ㅁㄴㅇㅁㄴㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ','Y');
Insert into EVENT (EVENT_ID,EVENT_TITLE,EVENT_TEACHER,EVENT_CLASS,EVENT_START,EVENT_END,EVENT_ATTEND,EVENT_LOC,EVENT_CONT,DEL) values ('SEN00024','세미나 07','이희성',null,'20171222',null,20,'서울체육관','ㄴㅇ',null);
Insert into EVENT (EVENT_ID,EVENT_TITLE,EVENT_TEACHER,EVENT_CLASS,EVENT_START,EVENT_END,EVENT_ATTEND,EVENT_LOC,EVENT_CONT,DEL) values ('SEN00025','세미나7','이희성',null,'20171222',null,20,'서울체육관','ㄴㅍㅇㄴㅍ',null);
Insert into EVENT (EVENT_ID,EVENT_TITLE,EVENT_TEACHER,EVENT_CLASS,EVENT_START,EVENT_END,EVENT_ATTEND,EVENT_LOC,EVENT_CONT,DEL) values ('SEN00026','갓오브하이스쿨','제천대성',null,'20171222',null,20,'서울체육관','ㄴㅍㅊㄴㄹㅇ',null);
Insert into EVENT (EVENT_ID,EVENT_TITLE,EVENT_TEACHER,EVENT_CLASS,EVENT_START,EVENT_END,EVENT_ATTEND,EVENT_LOC,EVENT_CONT,DEL) values ('SEN00027','갓오브하이스쿨','ㄴㅁㅇㅁㄴㅇ',null,null,null,23,'서울체육관','ㅇㄻㅇㄴㅁㅇ',null);
Insert into EVENT (EVENT_ID,EVENT_TITLE,EVENT_TEACHER,EVENT_CLASS,EVENT_START,EVENT_END,EVENT_ATTEND,EVENT_LOC,EVENT_CONT,DEL) values ('CHP00016','갓오하',null,null,'20171222','20171225',null,'서울체육관','ㄴㅁㄴㅇ',null);
Insert into EVENT (EVENT_ID,EVENT_TITLE,EVENT_TEACHER,EVENT_CLASS,EVENT_START,EVENT_END,EVENT_ATTEND,EVENT_LOC,EVENT_CONT,DEL) values ('CHP00018','전국 주짓수 배ㅇ',null,null,'20171222','20171225',null,'ㄴㅇㄹㄴㅇㄴㅇㄹ','ㅁㄴㅇㅁㄴㅇ',null);
Insert into EVENT (EVENT_ID,EVENT_TITLE,EVENT_TEACHER,EVENT_CLASS,EVENT_START,EVENT_END,EVENT_ATTEND,EVENT_LOC,EVENT_CONT,DEL) values ('CHP00019',null,null,null,null,null,null,null,null,null);
Insert into EVENT (EVENT_ID,EVENT_TITLE,EVENT_TEACHER,EVENT_CLASS,EVENT_START,EVENT_END,EVENT_ATTEND,EVENT_LOC,EVENT_CONT,DEL) values ('CHP00021','갓오하',null,null,'20171222','20171225',null,'서울체육관','ㅇㄹㄴㄹㅇㄴㄹ',null);
Insert into EVENT (EVENT_ID,EVENT_TITLE,EVENT_TEACHER,EVENT_CLASS,EVENT_START,EVENT_END,EVENT_ATTEND,EVENT_LOC,EVENT_CONT,DEL) values ('SEN00030',null,null,null,null,null,null,null,null,null);
Insert into EVENT (EVENT_ID,EVENT_TITLE,EVENT_TEACHER,EVENT_CLASS,EVENT_START,EVENT_END,EVENT_ATTEND,EVENT_LOC,EVENT_CONT,DEL) values ('CHP00028',null,null,null,null,null,null,null,null,null);
Insert into EVENT (EVENT_ID,EVENT_TITLE,EVENT_TEACHER,EVENT_CLASS,EVENT_START,EVENT_END,EVENT_ATTEND,EVENT_LOC,EVENT_CONT,DEL) values ('SEN00029','이희성 세미나','이희성',null,'20171222',null,20,'서울체육관','uuuuuui',null);
Insert into EVENT (EVENT_ID,EVENT_TITLE,EVENT_TEACHER,EVENT_CLASS,EVENT_START,EVENT_END,EVENT_ATTEND,EVENT_LOC,EVENT_CONT,DEL) values ('CHP00026','갓오하',null,null,'20171222','20171225',null,'서울체육관','hgghfg',null);
Insert into EVENT (EVENT_ID,EVENT_TITLE,EVENT_TEACHER,EVENT_CLASS,EVENT_START,EVENT_END,EVENT_ATTEND,EVENT_LOC,EVENT_CONT,DEL) values ('SEN00018','이희성 세미나','이희성',null,'20171222',null,20,'서울체육관','ㄴㅇㄹㅇㄹㄴ',null);
REM INSERTING into FILE_TABLE
SET DEFINE OFF;
Insert into FILE_TABLE (FILE_ID,FILE_NM,UPLOADED_NM,FILE_TYPE,FILE_LINK,FILE_SIZE,VIDEO_ID,EVENT_ID) values ('FILE000003','Koala.jpg','151374865114133a775f5-cc34-448f-b26b-83a16037e2a2.jpg','image/jpeg','/class202b/common/image.do?of=Koala.jpg&f=151374865114133a775f5-cc34-448f-b26b-83a16037e2a2.jpg','780831',null,'SEN00003');
Insert into FILE_TABLE (FILE_ID,FILE_NM,UPLOADED_NM,FILE_TYPE,FILE_LINK,FILE_SIZE,VIDEO_ID,EVENT_ID) values ('FILE000002','Chrysanthemum (2).jpg','15137414076962ccb951e-edbc-4fb8-a30b-7882d68cacdf.jpg','image/jpeg','/class202b/common/image.do?of=Chrysanthemum+%282%29.jpg&f=15137414076962ccb951e-edbc-4fb8-a30b-7882d68cacdf.jpg','879394',null,'SEN00002');
Insert into FILE_TABLE (FILE_ID,FILE_NM,UPLOADED_NM,FILE_TYPE,FILE_LINK,FILE_SIZE,VIDEO_ID,EVENT_ID) values ('FILE000004','Lighthouse.jpg','151374870333711a5469d-c5ec-4231-a59f-b4c6c761d3c2.jpg','image/jpeg','/class202b/common/image.do?of=Lighthouse.jpg&f=151374870333711a5469d-c5ec-4231-a59f-b4c6c761d3c2.jpg','561276',null,'SEN00004');
Insert into FILE_TABLE (FILE_ID,FILE_NM,UPLOADED_NM,FILE_TYPE,FILE_LINK,FILE_SIZE,VIDEO_ID,EVENT_ID) values ('FILE000001','BfferComma.jpg','151374083194463082f8b-0cf2-4638-9ed1-8787267aa23b.jpg','image/jpeg','/class202b/common/image.do?of=BfferComma.jpg&f=151374083194463082f8b-0cf2-4638-9ed1-8787267aa23b.jpg','777835',null,'SEN00001');
REM INSERTING into IDS
SET DEFINE OFF;
Insert into IDS (TABLE_NAME,NEXT_ID) values ('VIDEO_SPT',1);
Insert into IDS (TABLE_NAME,NEXT_ID) values ('VIDEO_DEF',1);
Insert into IDS (TABLE_NAME,NEXT_ID) values ('EVENT_SEN',32);
Insert into IDS (TABLE_NAME,NEXT_ID) values ('EVENT_CHP',30);
REM INSERTING into MEMBER
SET DEFINE OFF;
Insert into MEMBER (MEM_ID,MEM_PWD,MEM_EMAIL,MEM_NM,MEM_BIRTHDATE,MEM_PHONE,MEM_GENDER) values ('love','love','love@jiutopia.com','엄지민','19910221','010-2254-4848','M');
Insert into MEMBER (MEM_ID,MEM_PWD,MEM_EMAIL,MEM_NM,MEM_BIRTHDATE,MEM_PHONE,MEM_GENDER) values ('mem01','1234','kkk@naver.com','이태양','920425','000-0001-0000','M');
Insert into MEMBER (MEM_ID,MEM_PWD,MEM_EMAIL,MEM_NM,MEM_BIRTHDATE,MEM_PHONE,MEM_GENDER) values ('jurujuru','jj321','juru543@jiutopia.com','최원석','17861206','010-4463-7578','M');
Insert into MEMBER (MEM_ID,MEM_PWD,MEM_EMAIL,MEM_NM,MEM_BIRTHDATE,MEM_PHONE,MEM_GENDER) values ('jiu123','jitsu','jiu123@jiutopia.com','반다크홈','19830203','010-1234-5678','E');
REM INSERTING into VIDEO
SET DEFINE OFF;
Insert into VIDEO (VIDEO_ID,VIDEO_TITLE,VIDEO_CONT,VIDEO_URL,VIDEO_WTIME,VIDEO_THUMB,DEL) values ('DEF00002','일반 사람 발 vs. 주짓수를 배운 사람 발','Curabitur blandit odio at nulla eleifend rutrum. Sed tempus gravida cursus. Curabitur ut blandit enim. Vivamus dui erat, commodo non rutrum id, iaculis vitae enim. Fusce vitae volutpat dui. Praesent posuere scelerisque risus, ac congue tellus molestie vitae. Ut dolor nisl, aliquam vel efficitur sit amet, tincidunt sed augue. Suspendisse gravida quam egestas luctus sodales. Sed ut ante orci.','https://www.youtube.com/embed/dm-DZKajMZ8','2017/12/11','https://img.youtube.com/vi/dm-DZKajMZ8/0.jpg','Y');
Insert into VIDEO (VIDEO_ID,VIDEO_TITLE,VIDEO_CONT,VIDEO_URL,VIDEO_WTIME,VIDEO_THUMB,DEL) values ('DEF00003','실전 싸움에서 활용할 수 있는 6가지의 초크 기술!','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sit amet ligula a elit hendrerit ornare. Pellentesque sit amet nisi lorem. Sed placerat odio nulla, ut commodo nisi aliquam sed. Sed tincidunt mauris erat, a gravida lectus tincidunt sed. Suspendisse potenti. Sed dignissim ut dolor quis placerat. Quisque sit amet quam turpis. Morbi venenatis orci nec lectus convallis, eget placerat purus fermentum. Proin non consectetur libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse velit est, tempor vel libero nec, faucibus tincidunt justo. Nullam volutpat ultricies enim. Curabitur lobortis congue orci in lacinia. Sed nisi diam, accumsan vitae vestibulum quis, mollis quis nisl. Nulla metus tortor, venenatis sit amet felis ut, facilisis congue tellus. Morbi sem elit, lobortis non ligula id, vehicula elementum sapien.

','https://www.youtube.com/embed/hzhTpRoqVKk','2017/12/11','https://img.youtube.com/vi/hzhTpRoqVKk/0.jpg','Y');
Insert into VIDEO (VIDEO_ID,VIDEO_TITLE,VIDEO_CONT,VIDEO_URL,VIDEO_WTIME,VIDEO_THUMB,DEL) values ('DEF00004','주짓수 테크닉 연습을 여자친구와?','Sed faucibus, arcu in blandit porta, enim nunc pharetra urna, non pellentesque tellus sapien nec nunc. Cras suscipit sapien quis sapien convallis, ut auctor diam auctor. Sed congue pretium metus nec efficitur. Nulla ut turpis et neque blandit pharetra eu non tellus. Quisque ut massa sed mi suscipit aliquam. In efficitur malesuada lectus, vitae aliquet mi tristique ut. Donec vitae metus ipsum. Fusce faucibus feugiat purus non ultrices.

','https://www.youtube.com/embed/ibTYieFrCio','2017/12/11','https://img.youtube.com/vi/ibTYieFrCio/0.jpg','Y');
Insert into VIDEO (VIDEO_ID,VIDEO_TITLE,VIDEO_CONT,VIDEO_URL,VIDEO_WTIME,VIDEO_THUMB,DEL) values ('DEF00005','뒷골목에서 주짓수 통할까?','Donec elit quam, varius tempus molestie in, auctor id neque. Pellentesque commodo et sem laoreet semper. Quisque molestie commodo cursus. Proin bibendum risus eros, sed elementum mauris mattis lobortis. Vestibulum eros arcu, hendrerit vehicula quam vitae, sagittis iaculis dolor. Pellentesque porta mauris nec mauris porta ultrices quis in metus. Nullam a nulla et velit aliquam luctus eu et sapien.

','https://www.youtube.com/embed/S_Gmb2Ec41o','2017/12/11','https://img.youtube.com/vi/S_Gmb2Ec41o/0.jpg','Y');
Insert into VIDEO (VIDEO_ID,VIDEO_TITLE,VIDEO_CONT,VIDEO_URL,VIDEO_WTIME,VIDEO_THUMB,DEL) values ('SPT00002','키즈 주짓수 암바 니온벨리','Etiam eu magna nisi. Proin et imperdiet nisl. Vivamus a lorem facilisis, eleifend lectus ut, luctus libero. Nam vulputate urna quis orci lobortis dapibus. Cras leo urna, blandit in feugiat id, egestas sed dolor. Aliquam quis ultricies eros. Aliquam vestibulum risus arcu, quis rhoncus purus lobortis ac. Nulla vitae lorem vestibulum, consequat felis sit amet, lobortis sapien. Proin tempor nisl nisl, eget tempus erat viverra ut. Sed turpis eros, sagittis non tortor vitae, eleifend scelerisque mauris.

','https://www.youtube.com/embed/XvIQuU3y37o','2017/12/11','https://img.youtube.com/vi/XvIQuU3y37o/0.jpg','Y');
Insert into VIDEO (VIDEO_ID,VIDEO_TITLE,VIDEO_CONT,VIDEO_URL,VIDEO_WTIME,VIDEO_THUMB,DEL) values ('SPT00003','오모플라타 전환 클로즈가드','Vivamus nibh leo, molestie eu urna et, feugiat facilisis metus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Ut suscipit elit vitae enim venenatis vulputate nec id massa. Mauris congue varius augue, a ullamcorper leo pulvinar a. Aliquam condimentum arcu non ipsum luctus imperdiet. Aenean dignissim vestibulum rutrum. Integer faucibus id nisl quis iaculis. Fusce vitae quam ante.

','https://www.youtube.com/embed/qX-iV2nyNcA','2017/12/11','https://img.youtube.com/vi/qX-iV2nyNcA/0.jpg','Y');
Insert into VIDEO (VIDEO_ID,VIDEO_TITLE,VIDEO_CONT,VIDEO_URL,VIDEO_WTIME,VIDEO_THUMB,DEL) values ('SPT00004','오모플라타 신전 통할까?','Donec in feugiat magna, nec aliquam augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut eu auctor elit. Nunc malesuada nisl sed diam vestibulum, sit amet consectetur lorem ullamcorper. Etiam neque massa, consectetur ac imperdiet ac, sagittis non arcu. Aliquam tristique, massa sed pulvinar congue, odio nisi lobortis lorem, ut facilisis arcu ex fermentum risus. Nullam feugiat tellus ut turpis finibus elementum. Quisque sollicitudin, ligula vitae efficitur suscipit, libero sapien fermentum tellus, vulputate volutpat augue eros eu eros.

','https://www.youtube.com/embed/j0W719ml83U','2017/12/11','https://img.youtube.com/vi/j0W719ml83U/0.jpg','Y');
Insert into VIDEO (VIDEO_ID,VIDEO_TITLE,VIDEO_CONT,VIDEO_URL,VIDEO_WTIME,VIDEO_THUMB,DEL) values ('SPT00005','오모플라타 숄더락','Etiam volutpat turpis at varius auctor. Etiam lacus sem, pellentesque in est ac, euismod feugiat justo. Donec eu massa aliquet, egestas enim id, porttitor odio. Vestibulum a mauris ut eros porttitor sagittis at ut enim. Nulla eget ante rutrum, tincidunt dui eu, vestibulum tortor. Nunc ullamcorper nulla ac erat iaculis vulputate. Donec ac sapien leo. Pellentesque et sollicitudin felis, id sagittis orci. Duis nunc massa, vestibulum in est eu, vulputate placerat nulla. Integer a tincidunt ante, eget volutpat urna.

','https://www.youtube.com/embed/uzvGbio6sXo','2017/12/11','https://img.youtube.com/vi/uzvGbio6sXo/0.jpg','Y');
Insert into VIDEO (VIDEO_ID,VIDEO_TITLE,VIDEO_CONT,VIDEO_URL,VIDEO_WTIME,VIDEO_THUMB,DEL) values ('SPT00006','오모플라타 암바','Ut erat purus, egestas aliquam ornare quis, pellentesque sed lorem. Sed congue, nibh imperdiet aliquam vestibulum, nisi dui auctor lorem, et volutpat urna massa a leo. Phasellus varius, lectus ac venenatis efficitur, augue nisi euismod ligula, ut tempor lacus ligula in nisi. Donec ullamcorper pretium ipsum in luctus. Aliquam mauris mauris, convallis ac turpis sit amet, consectetur pulvinar magna. Nulla at dui at dolor ultricies feugiat non eu arcu. Phasellus ullamcorper ac nisi id rhoncus. Nunc ut vestibulum nisl. In volutpat leo vitae elit condimentum, sit amet consequat dui molestie. Ut nec leo aliquet, malesuada arcu at, egestas libero.

','https://www.youtube.com/embed/P5RRio7yKks','2017/12/11','https://img.youtube.com/vi/P5RRio7yKks/0.jpg','Y');
--------------------------------------------------------
--  DDL for Index ADMIN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN_PK" ON "ADMIN" ("ADMIN_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index BOOK_GROUP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BOOK_GROUP_PK" ON "BOOK_GROUP" ("GROUP_ID", "MEM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CMMT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CMMT_PK" ON "CMMT" ("MEM_ID", "CMMT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EVENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EVENT_PK" ON "EVENT" ("EVENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FILE_TABLE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FILE_TABLE_PK" ON "FILE_TABLE" ("FILE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MEMBER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEMBER_PK" ON "MEMBER" ("MEM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_BOOKMARK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_BOOKMARK" ON "BOOKMARK" ("MEM_ID", "CTGR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index VIDEO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VIDEO_PK" ON "VIDEO" ("VIDEO_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table ADMIN
--------------------------------------------------------

  ALTER TABLE "ADMIN" ADD CONSTRAINT "ADMIN_PK" PRIMARY KEY ("ADMIN_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ADMIN" MODIFY ("ADMIN_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOOKMARK
--------------------------------------------------------

  ALTER TABLE "BOOKMARK" ADD CONSTRAINT "PK_BOOKMARK" PRIMARY KEY ("MEM_ID", "CTGR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "BOOKMARK" MODIFY ("MEM_ID" NOT NULL ENABLE);
 
  ALTER TABLE "BOOKMARK" MODIFY ("CTGR" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOOK_GROUP
--------------------------------------------------------

  ALTER TABLE "BOOK_GROUP" ADD CONSTRAINT "BOOK_GROUP_PK" PRIMARY KEY ("GROUP_ID", "MEM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "BOOK_GROUP" MODIFY ("MEM_ID" NOT NULL ENABLE);
 
  ALTER TABLE "BOOK_GROUP" MODIFY ("GROUP_ID" NOT NULL ENABLE);
 
  ALTER TABLE "BOOK_GROUP" MODIFY ("GROUP_NM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CMMT
--------------------------------------------------------

  ALTER TABLE "CMMT" ADD CONSTRAINT "CMMT_PK" PRIMARY KEY ("MEM_ID", "CMMT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "CMMT" MODIFY ("MEM_ID" NOT NULL ENABLE);
 
  ALTER TABLE "CMMT" MODIFY ("CMMT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EVENT
--------------------------------------------------------

  ALTER TABLE "EVENT" ADD CONSTRAINT "EVENT_PK" PRIMARY KEY ("EVENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "EVENT" MODIFY ("EVENT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FILE_TABLE
--------------------------------------------------------

  ALTER TABLE "FILE_TABLE" ADD CONSTRAINT "FILE_TABLE_PK" PRIMARY KEY ("FILE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "FILE_TABLE" MODIFY ("FILE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MEMBER" ADD CONSTRAINT "MEMBER_PK" PRIMARY KEY ("MEM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "MEMBER" MODIFY ("MEM_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table VIDEO
--------------------------------------------------------

  ALTER TABLE "VIDEO" MODIFY ("VIDEO_ID" NOT NULL ENABLE);
 
  ALTER TABLE "VIDEO" ADD CONSTRAINT "VIDEO_PK" PRIMARY KEY ("VIDEO_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BOOKMARK
--------------------------------------------------------

  ALTER TABLE "BOOKMARK" ADD CONSTRAINT "FK_GROUP_TO_BOOKMARK" FOREIGN KEY ("GROUP_ID", "MEM_ID")
	  REFERENCES "BOOK_GROUP" ("GROUP_ID", "MEM_ID") ENABLE;
 
  ALTER TABLE "BOOKMARK" ADD CONSTRAINT "FK_MEM_TO_BOOKMARK" FOREIGN KEY ("MEM_ID")
	  REFERENCES "MEMBER" ("MEM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CMMT
--------------------------------------------------------

  ALTER TABLE "CMMT" ADD CONSTRAINT "CMMT_FK1" FOREIGN KEY ("MEM_ID")
	  REFERENCES "MEMBER" ("MEM_ID") ENABLE;
 
  ALTER TABLE "CMMT" ADD CONSTRAINT "CMMT_FK2" FOREIGN KEY ("EVENT_ID")
	  REFERENCES "EVENT" ("EVENT_ID") ENABLE;
 
  ALTER TABLE "CMMT" ADD CONSTRAINT "CMMT_FK3" FOREIGN KEY ("VIDEO_ID")
	  REFERENCES "VIDEO" ("VIDEO_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FILE_TABLE
--------------------------------------------------------

  ALTER TABLE "FILE_TABLE" ADD CONSTRAINT "FILE_TABLE_FK1" FOREIGN KEY ("EVENT_ID")
	  REFERENCES "EVENT" ("EVENT_ID") ENABLE;
 
  ALTER TABLE "FILE_TABLE" ADD CONSTRAINT "FILE_TABLE_FK2" FOREIGN KEY ("VIDEO_ID")
	  REFERENCES "VIDEO" ("VIDEO_ID") ENABLE;
