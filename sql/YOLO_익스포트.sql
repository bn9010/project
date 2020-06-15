사용자 : 
관리자 : admin ()

--------------------------------------------------------
--  ������ ������ - ������-6��-15-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence MREPLY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."MREPLY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence RECIPE_BOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."RECIPE_BOARD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence RECIPE_REPLY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."RECIPE_REPLY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence NOTICE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."NOTICE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence RPNUM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."RPNUM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence NOTICEREPLY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."NOTICEREPLY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "SCOTT"."NOTICE" 
   (	"NID" NUMBER(4,0), 
	"GID" VARCHAR2(35 BYTE), 
	"NNAME" VARCHAR2(50 BYTE), 
	"NTITLE" VARCHAR2(50 BYTE), 
	"NCONTENT" VARCHAR2(3000 BYTE), 
	"NDATE" DATE DEFAULT sysdate, 
	"NHIT" NUMBER(4,0) DEFAULT 0, 
	"NGROUP" NUMBER(4,0), 
	"NSTEP" NUMBER(4,0), 
	"NINDENT" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table NREPLY
--------------------------------------------------------

  CREATE TABLE "SCOTT"."NREPLY" 
   (	"NID" NUMBER(4,0), 
	"RPNUM" NUMBER(4,0), 
	"RPID" VARCHAR2(50 BYTE), 
	"RPCONTENT" VARCHAR2(500 BYTE), 
	"RPDATE" DATE DEFAULT sysdate, 
	"RPGROUP" VARCHAR2(100 BYTE), 
	"RPSTEP" VARCHAR2(1000 BYTE), 
	"RPINDENT" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RECIPE_BOARD
--------------------------------------------------------

  CREATE TABLE "SCOTT"."RECIPE_BOARD" 
   (	"RNUM" NUMBER(4,0), 
	"RID" VARCHAR2(20 BYTE), 
	"RNAME" VARCHAR2(20 BYTE), 
	"RTITLE" VARCHAR2(100 BYTE), 
	"RCATEGORY" VARCHAR2(50 BYTE), 
	"RSERVES" VARCHAR2(50 BYTE), 
	"RTIME" VARCHAR2(50 BYTE), 
	"RLEVEL" VARCHAR2(50 BYTE), 
	"RINFORMATION" VARCHAR2(1000 BYTE), 
	"RINGREDIENTS" VARCHAR2(2000 BYTE), 
	"RTIP" VARCHAR2(2000 BYTE), 
	"RFILESRC" VARCHAR2(200 BYTE), 
	"RDATE" DATE DEFAULT sysdate, 
	"RHIT" NUMBER(4,0) DEFAULT 0, 
	"STEP1" VARCHAR2(1000 BYTE), 
	"STEP2" VARCHAR2(1000 BYTE), 
	"STEP3" VARCHAR2(1000 BYTE), 
	"STEP4" VARCHAR2(1000 BYTE), 
	"STEP5" VARCHAR2(1000 BYTE), 
	"STEP6" VARCHAR2(1000 BYTE), 
	"CFILESRC1" VARCHAR2(1000 BYTE), 
	"CFILESRC2" VARCHAR2(1000 BYTE), 
	"CFILESRC3" VARCHAR2(1000 BYTE), 
	"CFILESRC4" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RECIPE_REPLY
--------------------------------------------------------

  CREATE TABLE "SCOTT"."RECIPE_REPLY" 
   (	"RNUM" NUMBER(4,0), 
	"PNUM" NUMBER(4,0), 
	"PID" VARCHAR2(50 BYTE), 
	"PNAME" VARCHAR2(100 BYTE), 
	"PCONTENT" VARCHAR2(500 BYTE), 
	"PDATE" DATE DEFAULT sysdate, 
	"PGROUP" VARCHAR2(100 BYTE), 
	"PSTEP" VARCHAR2(1000 BYTE), 
	"PINDENT" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table U_USER
--------------------------------------------------------

  CREATE TABLE "SCOTT"."U_USER" 
   (	"USER_ID" VARCHAR2(50 BYTE), 
	"USER_PW" VARCHAR2(100 BYTE), 
	"USER_NAME" VARCHAR2(100 BYTE), 
	"USER_EMAIL" VARCHAR2(50 BYTE), 
	"USER_POINT" NUMBER(*,0) DEFAULT 0, 
	"USER_IMG" VARCHAR2(100 BYTE) DEFAULT 'user/default user.png', 
	"USER_JOIN_DATE" DATE DEFAULT sysdate, 
	"USER_LOGIN_DATE" DATE DEFAULT sysdate, 
	"RCNT" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ADMIN
--------------------------------------------------------

  CREATE TABLE "SCOTT"."ADMIN" 
   (	"AID" VARCHAR2(50 BYTE), 
	"APASS" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ADMINNOTICE
--------------------------------------------------------

  CREATE TABLE "SCOTT"."ADMINNOTICE" 
   (	"ANUM" NUMBER(4,0), 
	"AID" VARCHAR2(20 BYTE), 
	"ACATEGORY" VARCHAR2(50 BYTE), 
	"ATITLE" VARCHAR2(50 BYTE), 
	"ACONTENT" VARCHAR2(3000 BYTE), 
	"ADATE" DATE DEFAULT sysdate, 
	"AHIT" NUMBER(4,0) DEFAULT 0, 
	"ASTEP" NUMBER(4,0), 
	"AINDENT" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MREPLY
--------------------------------------------------------

  CREATE TABLE "SCOTT"."MREPLY" 
   (	"ANUM" NUMBER(4,0), 
	"MRNUM" NUMBER(4,0), 
	"MRID" VARCHAR2(50 BYTE), 
	"MRCONTENT" VARCHAR2(500 BYTE), 
	"MRDATE" DATE DEFAULT sysdate, 
	"MRGROUP" VARCHAR2(100 BYTE), 
	"MRSTEP" VARCHAR2(1000 BYTE), 
	"MRINDENT" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into SCOTT.NOTICE
SET DEFINE OFF;
Insert into SCOTT.NOTICE (NID,GID,NNAME,NTITLE,NCONTENT,NDATE,NHIT,NGROUP,NSTEP,NINDENT) values (21,'test','test','���ִ� �����Ǹ� ���� ���� ������ּ���','���ִ� �����Ǹ� ���� ���� ������ּ���!!',to_date('20/06/12','RR/MM/DD'),0,21,0,0);
Insert into SCOTT.NOTICE (NID,GID,NNAME,NTITLE,NCONTENT,NDATE,NHIT,NGROUP,NSTEP,NINDENT) values (6,'test','test','asd',null,to_date('20/06/05','RR/MM/DD'),12,6,0,0);
Insert into SCOTT.NOTICE (NID,GID,NNAME,NTITLE,NCONTENT,NDATE,NHIT,NGROUP,NSTEP,NINDENT) values (9,null,'ryu','������','������',to_date('20/06/08','RR/MM/DD'),12,9,0,0);
Insert into SCOTT.NOTICE (NID,GID,NNAME,NTITLE,NCONTENT,NDATE,NHIT,NGROUP,NSTEP,NINDENT) values (22,'test','test','test1','������������',to_date('20/06/12','RR/MM/DD'),0,22,0,0);
Insert into SCOTT.NOTICE (NID,GID,NNAME,NTITLE,NCONTENT,NDATE,NHIT,NGROUP,NSTEP,NINDENT) values (3,'test','��','��','��',to_date('20/06/05','RR/MM/DD'),3,3,0,0);
Insert into SCOTT.NOTICE (NID,GID,NNAME,NTITLE,NCONTENT,NDATE,NHIT,NGROUP,NSTEP,NINDENT) values (12,'test','������','asd','������',to_date('20/06/10','RR/MM/DD'),2,12,0,0);
REM INSERTING into SCOTT.NREPLY
SET DEFINE OFF;
Insert into SCOTT.NREPLY (NID,RPNUM,RPID,RPCONTENT,RPDATE,RPGROUP,RPSTEP,RPINDENT) values (22,62,'test','����� �޾ƺ��ô�.',to_date('20/06/12','RR/MM/DD'),'62','0','0');
Insert into SCOTT.NREPLY (NID,RPNUM,RPID,RPCONTENT,RPDATE,RPGROUP,RPSTEP,RPINDENT) values (9,49,'test','123',to_date('20/06/10','RR/MM/DD'),'49','0','0');
Insert into SCOTT.NREPLY (NID,RPNUM,RPID,RPCONTENT,RPDATE,RPGROUP,RPSTEP,RPINDENT) values (6,46,'test','asd',to_date('20/06/10','RR/MM/DD'),'46','0','0');
Insert into SCOTT.NREPLY (NID,RPNUM,RPID,RPCONTENT,RPDATE,RPGROUP,RPSTEP,RPINDENT) values (9,47,'test','asf',to_date('20/06/10','RR/MM/DD'),'47','0','0');
Insert into SCOTT.NREPLY (NID,RPNUM,RPID,RPCONTENT,RPDATE,RPGROUP,RPSTEP,RPINDENT) values (9,48,'test','asd',to_date('20/06/10','RR/MM/DD'),'48','0','0');
Insert into SCOTT.NREPLY (NID,RPNUM,RPID,RPCONTENT,RPDATE,RPGROUP,RPSTEP,RPINDENT) values (21,61,'test','���',to_date('20/06/12','RR/MM/DD'),'61','0','0');
REM INSERTING into SCOTT.RECIPE_BOARD
SET DEFINE OFF;
Insert into SCOTT.RECIPE_BOARD (RNUM,RID,RNAME,RTITLE,RCATEGORY,RSERVES,RTIME,RLEVEL,RINFORMATION,RINGREDIENTS,RTIP,RFILESRC,RDATE,RHIT,STEP1,STEP2,STEP3,STEP4,STEP5,STEP6,CFILESRC1,CFILESRC2,CFILESRC3,CFILESRC4) values (20,'abc123','ȫ�浿',null,'�ع���','1�κ�','10�� �̳�','�ʺ�',null,null,null,'noimage.png',to_date('20/06/11','RR/MM/DD'),0,null,null,null,null,null,null,null,null,null,null);
Insert into SCOTT.RECIPE_BOARD (RNUM,RID,RNAME,RTITLE,RCATEGORY,RSERVES,RTIME,RLEVEL,RINFORMATION,RINGREDIENTS,RTIP,RFILESRC,RDATE,RHIT,STEP1,STEP2,STEP3,STEP4,STEP5,STEP6,CFILESRC1,CFILESRC2,CFILESRC3,CFILESRC4) values (34,'abc123','ȫ�浿',null,'�ع���','1�κ�','10�� �̳�','�ʺ�',null,null,null,'1591938883317�̸�����2.jpg',to_date('20/06/12','RR/MM/DD'),0,null,null,null,null,null,null,null,null,null,null);
Insert into SCOTT.RECIPE_BOARD (RNUM,RID,RNAME,RTITLE,RCATEGORY,RSERVES,RTIME,RLEVEL,RINFORMATION,RINGREDIENTS,RTIP,RFILESRC,RDATE,RHIT,STEP1,STEP2,STEP3,STEP4,STEP5,STEP6,CFILESRC1,CFILESRC2,CFILESRC3,CFILESRC4) values (37,'abc123','ȫ�浿','�ް�Ŀ�Ǹ����','����Ʈ','1�κ�','20�� �̳�','�ʺ�','�ް�Ŀ�Ǹ�������~','���:�ν���Ʈ Ŀ��,����,�߰ſ,����','�����ֽǶ� ��ġ���ʰ� ó���ؾߵ˴ϴ�. ���� ���������ּž� ���� ���ִ� �ް�Ŀ�Ǹ� ��Ǽ��ֽ��ϴ�.','1591939773681�ް�Ŀ��.jpg',to_date('20/06/12','RR/MM/DD'),0,'��ᵵ �����ؿ�. Ŀ�ǰ��� 2ū��, Ȳ���� 2ū��, �߰ſ� �� 2ū���� �ʿ��ؿ�. �߰ſ� ���� ���� ���� �״�� ����߾��. ���� �ø����� ��ü������ ������ �÷��ָ� �Ǳ���.','���� Ŀ�ǰ��� 2ū���� �ְ� �߰ſ� ���� �ξ� �����ݴϴ�. �׸��� ���� Ȳ���� 2ū���� �־� �ٽ� �� �����ݴϴ�.
�ڵ� �ͼ��� ��ǰ�� ���ָ� �Ǵµ���. ���� �����Ƿ� ���� ��￩�� ��ǰ�� ���ּ���.','�ӷ��� ������� �������� ������ ��ǰ�� ���־�� �ϴµ���. �Ϲ� ��ǰ��ε� ���� �� ������, ���� ���� ������. �Ф� ��ǰ�� �������� ���� ���־�� ������ ��ǰ�� ���� �� �־��.','�귯������ ���� ������ ��ǰ�� ���־�� �մϴ�. �� ��ü�� �ް� �������� ����ϰ� ���� �ް� ���� ��¦ ����ϴ�.','������ �ſ� �ξ��ְ� ���� ��ǰ�� ���� �÷��ָ� ������.',null,'1591939773682�ް�Ŀ������1.PNG','1591939773682�ް�Ŀ������2.PNG','1591939773682�ް�Ŀ������3.PNG','1591939773683�ް�Ŀ������4.PNG');
Insert into SCOTT.RECIPE_BOARD (RNUM,RID,RNAME,RTITLE,RCATEGORY,RSERVES,RTIME,RLEVEL,RINFORMATION,RINGREDIENTS,RTIP,RFILESRC,RDATE,RHIT,STEP1,STEP2,STEP3,STEP4,STEP5,STEP6,CFILESRC1,CFILESRC2,CFILESRC3,CFILESRC4) values (18,'abc123','ȫ�浿',null,'�ع���','1�κ�','10�� �̳�','�ʺ�',null,null,null,'noimage.png',to_date('20/06/11','RR/MM/DD'),0,null,null,null,null,null,null,null,null,null,null);
Insert into SCOTT.RECIPE_BOARD (RNUM,RID,RNAME,RTITLE,RCATEGORY,RSERVES,RTIME,RLEVEL,RINFORMATION,RINGREDIENTS,RTIP,RFILESRC,RDATE,RHIT,STEP1,STEP2,STEP3,STEP4,STEP5,STEP6,CFILESRC1,CFILESRC2,CFILESRC3,CFILESRC4) values (24,'abc123','ȫ�浿','�����','��/��/��','1�κ�','30�� �̳�','���','���ִ� ����� ���̸�������~','���: ���� ,���� ,û�����, ���� ,��
��� : ������ ,���� ,���� ����','�������� 8�ð�~�ݳ��� ���� �������� �ּ���.','1591920992552�����.jpg',to_date('20/06/12','RR/MM/DD'),5,'���幰 �����. ��+������+����+����+������+��+������ �ְ� ��������� ���� ���� ����� �־� �����ּ���.
����, û����߸� ����ֽð�,����� �� �������� ����ּ���!

','������ ũ���� �׸��� ����� ����, û����߸� ����ּ���.
������ ���幰�� �˳��� �ξ��ּ���.

','�ϼ��� �������� �信 �÷� ������� ����� ������.',null,null,null,'1591920992553�����1��.jpg','15919209925542qjs.jpg','15919209925543��.jpg','15919209925544qjs.jpg');
Insert into SCOTT.RECIPE_BOARD (RNUM,RID,RNAME,RTITLE,RCATEGORY,RSERVES,RTIME,RLEVEL,RINFORMATION,RINGREDIENTS,RTIP,RFILESRC,RDATE,RHIT,STEP1,STEP2,STEP3,STEP4,STEP5,STEP6,CFILESRC1,CFILESRC2,CFILESRC3,CFILESRC4) values (27,'abc123','ȫ�浿','�ż��ϰ� ���ִ� �������Ľ�Ÿ!','���','1�κ�','20�� �̳�','�ʺ�','�ż��ϰ� ���մ� �������Ľ�Ÿ!','��� : ���İ�Ƽ��,����ä��,������,������ ������,���߸���,����丶��,�ĸ���ġ��
���: ������,����,�߻�ͽ���,������,��������,�ø�����','�غ��� ������ ���ڰ� ����ּ���. �ҽ��� �ξ��ּ���.���� ���� �ι�� ����̵˴ϴ�!','1591939831098�������Ľ�Ÿ ����1.jpg',to_date('20/06/12','RR/MM/DD'),23,'���߸����� ����ֽð� ���� ���߸���,�ø���,����丶��,�������� ����ּ���
�������� �Ķ����ҿ� �ѹ� �����ּ���!','�����ҽ��� ����� ������. ������ 3ū��+���� 2ū��+�߻�ͽ��� 2ū��+������ 2ū��+�������� 1ū��+�ø����� 2ū��
���İ�Ƽ���� ��� �ֽð� �� ����� ���� ������ ����ּ���.
','���� �׸��� ��� �غ��� ������ ���ڰ� ����ּ���. �ҽ��� �ξ��ּ���.

','�������� �ĸ���ġ���� �÷��ּ���.',null,null,'1591921820962�������Ľ�Ÿ ����1.jpg','1591921820963������ �Ľ�Ÿ ����2.jpg','1591921820963������ �Ľ�Ÿ ����3.jpg','1591921820963������ �Ľ�Ÿ ���� 4.jpg');
Insert into SCOTT.RECIPE_BOARD (RNUM,RID,RNAME,RTITLE,RCATEGORY,RSERVES,RTIME,RLEVEL,RINFORMATION,RINGREDIENTS,RTIP,RFILESRC,RDATE,RHIT,STEP1,STEP2,STEP3,STEP4,STEP5,STEP6,CFILESRC1,CFILESRC2,CFILESRC3,CFILESRC4) values (25,'abc123','ȫ�浿','���ְ� �ſ� ���߱⸧ ������','�ع���','1�κ�','10�� �̳�','�ʺ�','�ſ�� �����ϸ� �ؾ��ϴ� �丮!','��� : ���丮��, �����̶� 
��� : ���߱⸧,��������,����,����,���߰���,���⸧,����,���ҽ�',null,'1591921263712���߱⸧ ������.jpg',to_date('20/06/12','RR/MM/DD'),6,'���� �Ա� ���� ũ��� �߶� ��Ţ�� ��ǰ�����⿡ 70�� 6-9�ð� �����Ѵ�.
�ҽ���Ḧ ��� ���´�.','���� �Ҹ��� ���� ������ �� �� ���� ��ģ �� �ҽ�, ���Ŀ� �Բ� ���´�.

','��Ţ�� ��󿡾������̾� 1��, 8-10�а� ���� �ϼ��Ѵ�.',null,null,null,'1591921263712���߱⸧ ����1.jpg','1591921263713���߱⸧ ����2.jpg','1591921263713���߱⸧ ����3.jpg','1591921263714���߱⸧ ����4.jpg');
Insert into SCOTT.RECIPE_BOARD (RNUM,RID,RNAME,RTITLE,RCATEGORY,RSERVES,RTIME,RLEVEL,RINFORMATION,RINGREDIENTS,RTIP,RFILESRC,RDATE,RHIT,STEP1,STEP2,STEP3,STEP4,STEP5,STEP6,CFILESRC1,CFILESRC2,CFILESRC3,CFILESRC4) values (26,'abc123','ȫ�浿','�ѹټ��� ��ī���� ������!','�Ͻ�','1�κ�','30�� �̳�','�߼�','�ѹټ���! ���ִ� ��ī�� �����','��� : �Ұ�� ä���� ������ �а��� ����� �ް�','��ī���� �⸧�µ� 170������ Ƣ���ֽô°������ϴ� �⸧�µ��� �𸣽ø�
�����縦 �־ 1�ʻ��̿� �ö���� Ƣ���ֽø�˴ϴ�','1591921531109��ī�������!.jpg',to_date('20/06/12','RR/MM/DD'),1,'�Ұ�⿡ �ణ �ذ��� ���ּ���!
����ߴ� ä�� ����ֽø� �˴ϴ�~','�а���>���>������ ������ �����ּ���!','�⸧ �µ��� �ö���� �Ѹ��� ���� ������ �� ������ Ƣ���ּ���!',null,null,null,'1591921531109��ī�� ����1.jpg','1591921531110��ī�� ����2.jpg','1591921531110��ī�� ����3.jpg','1591921531111��ī�� ����4.jpg');
Insert into SCOTT.RECIPE_BOARD (RNUM,RID,RNAME,RTITLE,RCATEGORY,RSERVES,RTIME,RLEVEL,RINFORMATION,RINGREDIENTS,RTIP,RFILESRC,RDATE,RHIT,STEP1,STEP2,STEP3,STEP4,STEP5,STEP6,CFILESRC1,CFILESRC2,CFILESRC3,CFILESRC4) values (28,'abc123','ȫ�浿','�������? �̸�!','�ع���','1�κ�','10�� �̳�','�ʺ�','������ �Ϳ�! �̸����ι������!','���: �ᳪ��,����,��ä,����,���,����,�̸�,���,����
���: ������,����,����,�ŽǾ�,���尡��','���ְ� �� ��������~','1591922114024�̸�.PNG',to_date('20/06/12','RR/MM/DD'),15,'�켱 �������� ���� �����մϴ�. ���ĸ� ä ����ݴϴ�. ���� ���۰� �� �κ��� ���� �� �� ������ �� �� ä ����ݴϴ�. ��� ���� ǥ���� ��� ������ ���� �� ��, ���̿� ���� ������� ��� �ݴϴ�.
 ��ä�� ������ ���� �� �� �״�� ��� �ݴϴ�. ������ �������� ��� �ݴϴ�.
','�̸� �ҽ��� ������ݴϴ�. ������ 2��Ǭ+���� 1��Ǭ+���� 1��Ǭ+�ŽǾ� 2��Ǭ+���尡�� 1��Ǭ+���� 2g

',' ���� �ұ� �ѽ�Ǭ�� �ְ� �ᳪ���� �ֽ��ϴ�. �Ѳ��� �ݰ� 3�а� ���� �ݴϴ�. �ᳪ���� �ƻ��ϰ� ����� ���� ������ ���� ��� �ݴϴ�.','���� �ұ� �� ��Ǭ�� �־��� �� ��� 2���� �ְ� ��� �ݴϴ�. �ݼ��� 7�� �ϼ��� 10~12������ ������ �����մϴ�.

',' ������ ��� ���� ���ʸ� �ְ� 4~5�а� �̸��� ��� �ݴϴ�. �̸��� �� �ٵ��� ��� Ǯ�� �ݴϴ�. ���� �̸��� ������ ��� �ص� ���⸦ ���� ��ƵӴϴ�.

','. �׸��� �̸� - �ᳪ�� - ��� - ���� - ���� - ��ä - ���� ����� �÷� �����ϴ�. �̸� �ҽ� - �� - ���⸧�� ������ �ѷ��ָ� �����̸� �ϼ�~','1591922114024�̸�����1.jpg','1591922114025�̸�����2.jpg','1591922114026�̸�����3.jpg','1591922114026�̸�����4.jpg');
Insert into SCOTT.RECIPE_BOARD (RNUM,RID,RNAME,RTITLE,RCATEGORY,RSERVES,RTIME,RLEVEL,RINFORMATION,RINGREDIENTS,RTIP,RFILESRC,RDATE,RHIT,STEP1,STEP2,STEP3,STEP4,STEP5,STEP6,CFILESRC1,CFILESRC2,CFILESRC3,CFILESRC4) values (30,'abc123','ȫ�浿','���ִ� ��ġ��� ������!','��ġ/����/���','2�κ�','30�� �̳�','�߼�','���ִ� ��ġ������!','���: ��ġ,û�����,�������,����,����
���: ���尡��,��������,������,������','���̺����Ҷ����� ��ġ����,�������󼭴� ���̹����� �־��ֽø� �����ϴ�!.','1591924932835��ġ�.jpg',to_date('20/06/12','RR/MM/DD'),13,'���� ���� �о ��ġ�� �� �غ����ּ���!
���� ������⵵ �غ����ֽø�˴ϴ�.
���� û����ߵ� �ۼ� ��� �غ��մϴ�.!','���� �Ҷ߹��� ������⸦ �־��ּ���
��ġ��� ������ ��������� �⳻�� �����ϱ����� ���嵵 �־��ּ���
�׸��� ���� �Ҷ߹��� ������ ��ǰ�� �������ּ���!','�����⸧�� ������ ����� �췯������ ���� ��ġ�� �־��ּ���!','���尡�� �������� �������� �־��ּ���. ���� ���������� ���ֽø�˴ϴ�.
','���� �����ϴٸ� ��ġ������ �־��ּ��� �ۼ� ���� û����ߵ� �־��ּ���!','���������� ���ı��� �÷��ֽø� ��ġ��ϼ�!','1591924932836��ġ� ����1.jpg','1591924932836��ġ� ����2.jpg','1591924932837��ġ� ����3.jpg','1591924932837��ġ� ����4.jpg');
REM INSERTING into SCOTT.RECIPE_REPLY
SET DEFINE OFF;
Insert into SCOTT.RECIPE_REPLY (RNUM,PNUM,PID,PNAME,PCONTENT,PDATE,PGROUP,PSTEP,PINDENT) values (30,78,'abc123','ȫ�浿','��۴ޱ�',to_date('20/06/12','RR/MM/DD'),'78','0','0');
Insert into SCOTT.RECIPE_REPLY (RNUM,PNUM,PID,PNAME,PCONTENT,PDATE,PGROUP,PSTEP,PINDENT) values (30,79,'abc123','ȫ�浿','��۴ޱ�2��°',to_date('20/06/12','RR/MM/DD'),'79','0','0');
Insert into SCOTT.RECIPE_REPLY (RNUM,PNUM,PID,PNAME,PCONTENT,PDATE,PGROUP,PSTEP,PINDENT) values (28,62,'abc123','ȫ�浿','���� ���־�����',to_date('20/06/12','RR/MM/DD'),'62','0','0');
Insert into SCOTT.RECIPE_REPLY (RNUM,PNUM,PID,PNAME,PCONTENT,PDATE,PGROUP,PSTEP,PINDENT) values (28,63,'abc123','ȫ�浿','���� ���־�����',to_date('20/06/12','RR/MM/DD'),'63','0','0');
Insert into SCOTT.RECIPE_REPLY (RNUM,PNUM,PID,PNAME,PCONTENT,PDATE,PGROUP,PSTEP,PINDENT) values (28,64,'abc123','ȫ�浿','���� ���־�����',to_date('20/06/12','RR/MM/DD'),'64','0','0');
Insert into SCOTT.RECIPE_REPLY (RNUM,PNUM,PID,PNAME,PCONTENT,PDATE,PGROUP,PSTEP,PINDENT) values (28,65,'abc123','ȫ�浿','���ѹ� �����Կ�!',to_date('20/06/12','RR/MM/DD'),'65','0','0');
Insert into SCOTT.RECIPE_REPLY (RNUM,PNUM,PID,PNAME,PCONTENT,PDATE,PGROUP,PSTEP,PINDENT) values (28,66,'abc123','ȫ�浿','���� �ѹ� �����Կ�',to_date('20/06/12','RR/MM/DD'),'66','0','0');
Insert into SCOTT.RECIPE_REPLY (RNUM,PNUM,PID,PNAME,PCONTENT,PDATE,PGROUP,PSTEP,PINDENT) values (30,80,'abc123','ȫ�浿','����� �޾ƺ���',to_date('20/06/12','RR/MM/DD'),'80','0','0');
Insert into SCOTT.RECIPE_REPLY (RNUM,PNUM,PID,PNAME,PCONTENT,PDATE,PGROUP,PSTEP,PINDENT) values (28,61,'abc123','ȫ�浿','���� ���־�����',to_date('20/06/12','RR/MM/DD'),'61','0','0');
Insert into SCOTT.RECIPE_REPLY (RNUM,PNUM,PID,PNAME,PCONTENT,PDATE,PGROUP,PSTEP,PINDENT) values (30,73,'abc123','ȫ�浿','1',to_date('20/06/12','RR/MM/DD'),'73','0','0');
Insert into SCOTT.RECIPE_REPLY (RNUM,PNUM,PID,PNAME,PCONTENT,PDATE,PGROUP,PSTEP,PINDENT) values (30,74,'abc123','ȫ�浿','2',to_date('20/06/12','RR/MM/DD'),'74','0','0');
Insert into SCOTT.RECIPE_REPLY (RNUM,PNUM,PID,PNAME,PCONTENT,PDATE,PGROUP,PSTEP,PINDENT) values (30,75,'abc123','ȫ�浿','3',to_date('20/06/12','RR/MM/DD'),'75','0','0');
Insert into SCOTT.RECIPE_REPLY (RNUM,PNUM,PID,PNAME,PCONTENT,PDATE,PGROUP,PSTEP,PINDENT) values (30,76,'abc123','ȫ�浿','4',to_date('20/06/12','RR/MM/DD'),'76','0','0');
Insert into SCOTT.RECIPE_REPLY (RNUM,PNUM,PID,PNAME,PCONTENT,PDATE,PGROUP,PSTEP,PINDENT) values (30,77,'abc123','ȫ�浿','5',to_date('20/06/12','RR/MM/DD'),'77','0','0');
REM INSERTING into SCOTT.U_USER
SET DEFINE OFF;
Insert into SCOTT.U_USER (USER_ID,USER_PW,USER_NAME,USER_EMAIL,USER_POINT,USER_IMG,USER_JOIN_DATE,USER_LOGIN_DATE,RCNT) values ('qwer1234655','306cf6180f60c469f3489d5ef052ea0d6604d363e9894017466bc0256aa4cfbd','������','wpdn695@na',0,'user/default user.png',to_date('20/06/12','RR/MM/DD'),to_date('20/06/12','RR/MM/DD'),null);
Insert into SCOTT.U_USER (USER_ID,USER_PW,USER_NAME,USER_EMAIL,USER_POINT,USER_IMG,USER_JOIN_DATE,USER_LOGIN_DATE,RCNT) values ('youjewoo','306cf6180f60c469f3489d5ef052ea0d6604d363e9894017466bc0256aa4cfbd','youjewoo','wpdn695@na',0,'user/default user.png',to_date('20/06/12','RR/MM/DD'),to_date('20/06/12','RR/MM/DD'),null);
Insert into SCOTT.U_USER (USER_ID,USER_PW,USER_NAME,USER_EMAIL,USER_POINT,USER_IMG,USER_JOIN_DATE,USER_LOGIN_DATE,RCNT) values ('ȫ�浿','306cf6180f60c469f3489d5ef052ea0d6604d363e9894017466bc0256aa4cfbd','����','wpdn695@na',0,'user/default user.png',to_date('20/06/10','RR/MM/DD'),to_date('20/06/10','RR/MM/DD'),null);
Insert into SCOTT.U_USER (USER_ID,USER_PW,USER_NAME,USER_EMAIL,USER_POINT,USER_IMG,USER_JOIN_DATE,USER_LOGIN_DATE,RCNT) values ('dbwpdn1','306cf6180f60c469f3489d5ef052ea0d6604d363e9894017466bc0256aa4cfbd','������','wpdn695@na',0,'user/default user.png',to_date('20/06/10','RR/MM/DD'),to_date('20/06/10','RR/MM/DD'),null);
Insert into SCOTT.U_USER (USER_ID,USER_PW,USER_NAME,USER_EMAIL,USER_POINT,USER_IMG,USER_JOIN_DATE,USER_LOGIN_DATE,RCNT) values ('12','3','3','4',0,'6',to_date('20/06/11','RR/MM/DD'),to_date('20/06/11','RR/MM/DD'),'5');
Insert into SCOTT.U_USER (USER_ID,USER_PW,USER_NAME,USER_EMAIL,USER_POINT,USER_IMG,USER_JOIN_DATE,USER_LOGIN_DATE,RCNT) values ('1332','3','3','4',0,'5',to_date('20/06/11','RR/MM/DD'),to_date('20/06/11','RR/MM/DD'),'5');
Insert into SCOTT.U_USER (USER_ID,USER_PW,USER_NAME,USER_EMAIL,USER_POINT,USER_IMG,USER_JOIN_DATE,USER_LOGIN_DATE,RCNT) values ('13323','3','3','4',0,'5',to_date('20/06/11','RR/MM/DD'),to_date('20/06/11','RR/MM/DD'),'5');
Insert into SCOTT.U_USER (USER_ID,USER_PW,USER_NAME,USER_EMAIL,USER_POINT,USER_IMG,USER_JOIN_DATE,USER_LOGIN_DATE,RCNT) values ('qwer1234555','306cf6180f60c469f3489d5ef052ea0d6604d363e9894017466bc0256aa4cfbd','����','wpdn555@gkdl.com',0,'user/default user.png',to_date('20/06/11','RR/MM/DD'),to_date('20/06/11','RR/MM/DD'),null);
Insert into SCOTT.U_USER (USER_ID,USER_PW,USER_NAME,USER_EMAIL,USER_POINT,USER_IMG,USER_JOIN_DATE,USER_LOGIN_DATE,RCNT) values ('qwer123455511','460a3eb3f63d1fdc5212fc2929cb700609f8d511dfc227ff837b26666263c91a','����','wpdn695@na',0,'user/default user.png',to_date('20/06/12','RR/MM/DD'),to_date('20/06/12','RR/MM/DD'),null);
Insert into SCOTT.U_USER (USER_ID,USER_PW,USER_NAME,USER_EMAIL,USER_POINT,USER_IMG,USER_JOIN_DATE,USER_LOGIN_DATE,RCNT) values ('RYUJEWOO','306cf6180f60c469f3489d5ef052ea0d6604d363e9894017466bc0256aa4cfbd','������','wpdn535@naver.com',0,'user/default user.png',to_date('20/06/12','RR/MM/DD'),to_date('20/06/12','RR/MM/DD'),null);
Insert into SCOTT.U_USER (USER_ID,USER_PW,USER_NAME,USER_EMAIL,USER_POINT,USER_IMG,USER_JOIN_DATE,USER_LOGIN_DATE,RCNT) values ('dbwpdn1124124','306cf6180f60c469f3489d5ef052ea0d6604d363e9894017466bc0256aa4cfbd','dbwdghd','wpdn695@na',0,'user/default user.png',to_date('20/06/12','RR/MM/DD'),to_date('20/06/12','RR/MM/DD'),null);
Insert into SCOTT.U_USER (USER_ID,USER_PW,USER_NAME,USER_EMAIL,USER_POINT,USER_IMG,USER_JOIN_DATE,USER_LOGIN_DATE,RCNT) values ('qwer12346g','306cf6180f60c469f3489d5ef052ea0d6604d363e9894017466bc0256aa4cfbd','sfa','wpdn695@na',0,'user/default user.png',to_date('20/06/11','RR/MM/DD'),to_date('20/06/11','RR/MM/DD'),null);
Insert into SCOTT.U_USER (USER_ID,USER_PW,USER_NAME,USER_EMAIL,USER_POINT,USER_IMG,USER_JOIN_DATE,USER_LOGIN_DATE,RCNT) values ('dlawjdghks','306cf6180f60c469f3489d5ef052ea0d6604d363e9894017466bc0256aa4cfbd','��������','wpdn695@na',0,'user/default user.png',to_date('20/06/12','RR/MM/DD'),to_date('20/06/12','RR/MM/DD'),null);
Insert into SCOTT.U_USER (USER_ID,USER_PW,USER_NAME,USER_EMAIL,USER_POINT,USER_IMG,USER_JOIN_DATE,USER_LOGIN_DATE,RCNT) values ('test','306cf6180f60c469f3489d5ef052ea0d6604d363e9894017466bc0256aa4cfbd','������','wpdn695@naver.com',0,'user/default user.png',to_date('20/06/10','RR/MM/DD'),to_date('20/06/10','RR/MM/DD'),null);
Insert into SCOTT.U_USER (USER_ID,USER_PW,USER_NAME,USER_EMAIL,USER_POINT,USER_IMG,USER_JOIN_DATE,USER_LOGIN_DATE,RCNT) values ('abc123','306cf6180f60c469f3489d5ef052ea0d6604d363e9894017466bc0256aa4cfbd','ȫ�浿','wpdn695@na',0,'user/default user.png',to_date('20/06/10','RR/MM/DD'),to_date('20/06/10','RR/MM/DD'),null);
Insert into SCOTT.U_USER (USER_ID,USER_PW,USER_NAME,USER_EMAIL,USER_POINT,USER_IMG,USER_JOIN_DATE,USER_LOGIN_DATE,RCNT) values ('dbwpdn2','306cf6180f60c469f3489d5ef052ea0d6604d363e9894017466bc0256aa4cfbd','����','wpdn695@na',0,'user/default user.png',to_date('20/06/10','RR/MM/DD'),to_date('20/06/10','RR/MM/DD'),null);
Insert into SCOTT.U_USER (USER_ID,USER_PW,USER_NAME,USER_EMAIL,USER_POINT,USER_IMG,USER_JOIN_DATE,USER_LOGIN_DATE,RCNT) values ('qwer12346','306cf6180f60c469f3489d5ef052ea0d6604d363e9894017466bc0256aa4cfbd','asdrf','wpdn695@naver.com',0,'user/default user.png',to_date('20/06/10','RR/MM/DD'),to_date('20/06/10','RR/MM/DD'),null);
Insert into SCOTT.U_USER (USER_ID,USER_PW,USER_NAME,USER_EMAIL,USER_POINT,USER_IMG,USER_JOIN_DATE,USER_LOGIN_DATE,RCNT) values ('asfsaf','306cf6180f60c469f3489d5ef052ea0d6604d363e9894017466bc0256aa4cfbd','fasfasf','wpdn695@na',0,'user/default user.png',to_date('20/06/11','RR/MM/DD'),to_date('20/06/11','RR/MM/DD'),null);
Insert into SCOTT.U_USER (USER_ID,USER_PW,USER_NAME,USER_EMAIL,USER_POINT,USER_IMG,USER_JOIN_DATE,USER_LOGIN_DATE,RCNT) values ('qweasd','306cf6180f60c469f3489d5ef052ea0d6604d363e9894017466bc0256aa4cfbd','����','wpdn695@na',0,'user/default user.png',to_date('20/06/11','RR/MM/DD'),to_date('20/06/11','RR/MM/DD'),null);
Insert into SCOTT.U_USER (USER_ID,USER_PW,USER_NAME,USER_EMAIL,USER_POINT,USER_IMG,USER_JOIN_DATE,USER_LOGIN_DATE,RCNT) values ('dbwpdn','96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e','������2','wpdn555@gkdl.com',0,'user/default user.png',to_date('20/06/12','RR/MM/DD'),to_date('20/06/12','RR/MM/DD'),null);
Insert into SCOTT.U_USER (USER_ID,USER_PW,USER_NAME,USER_EMAIL,USER_POINT,USER_IMG,USER_JOIN_DATE,USER_LOGIN_DATE,RCNT) values ('dbwpdn555','306cf6180f60c469f3489d5ef052ea0d6604d363e9894017466bc0256aa4cfbd','asdrf','wpdn695@na',0,'user/default user.png',to_date('20/06/12','RR/MM/DD'),to_date('20/06/12','RR/MM/DD'),null);
Insert into SCOTT.U_USER (USER_ID,USER_PW,USER_NAME,USER_EMAIL,USER_POINT,USER_IMG,USER_JOIN_DATE,USER_LOGIN_DATE,RCNT) values ('dbwpdn123','306cf6180f60c469f3489d5ef052ea0d6604d363e9894017466bc0256aa4cfbd','������','wpdn695@naver.com',0,'user/default user.png',to_date('20/06/10','RR/MM/DD'),to_date('20/06/10','RR/MM/DD'),null);
REM INSERTING into SCOTT.ADMIN
SET DEFINE OFF;
Insert into SCOTT.ADMIN (AID,APASS) values ('ADMIN','123456');
REM INSERTING into SCOTT.ADMINNOTICE
SET DEFINE OFF;
Insert into SCOTT.ADMINNOTICE (ANUM,AID,ACATEGORY,ATITLE,ACONTENT,ADATE,AHIT,ASTEP,AINDENT) values (42,'ADMIN','�߿����','�߿� ������������ �ٲ�����ϴ�.!','�߿� ������������ �ٲ�����ϴ�.!',to_date('20/06/12','RR/MM/DD'),6,42,0);
Insert into SCOTT.ADMINNOTICE (ANUM,AID,ACATEGORY,ATITLE,ACONTENT,ADATE,AHIT,ASTEP,AINDENT) values (5,'ADMIN','�߿����','124','���ϱ�',to_date('20/06/10','RR/MM/DD'),8,5,0);
Insert into SCOTT.ADMINNOTICE (ANUM,AID,ACATEGORY,ATITLE,ACONTENT,ADATE,AHIT,ASTEP,AINDENT) values (41,'ADMIN','�߿����','�߿��� ���������Դϴ�.','�߿��� ���������Դϴ�.',to_date('20/06/12','RR/MM/DD'),5,41,0);
Insert into SCOTT.ADMINNOTICE (ANUM,AID,ACATEGORY,ATITLE,ACONTENT,ADATE,AHIT,ASTEP,AINDENT) values (43,'ADMIN','�߿����','�߿���� �����Դϴ�.','�߿���� �����Դϴ�.',to_date('20/06/12','RR/MM/DD'),0,43,0);
Insert into SCOTT.ADMINNOTICE (ANUM,AID,ACATEGORY,ATITLE,ACONTENT,ADATE,AHIT,ASTEP,AINDENT) values (23,'ADMIN','�߿����','�߿�������� �ٲ�����ϴ�.','�߿�������� �ٲ�����ϴ�.',to_date('20/06/11','RR/MM/DD'),3,23,0);
Insert into SCOTT.ADMINNOTICE (ANUM,AID,ACATEGORY,ATITLE,ACONTENT,ADATE,AHIT,ASTEP,AINDENT) values (2,'ADMIN','�̺�Ʈ','����������','��������������',to_date('20/06/08','RR/MM/DD'),7,2,0);
Insert into SCOTT.ADMINNOTICE (ANUM,AID,ACATEGORY,ATITLE,ACONTENT,ADATE,AHIT,ASTEP,AINDENT) values (3,'ADMIN','�߿����','1���Դϴ�.','1���Դϴ�.',to_date('20/06/08','RR/MM/DD'),5,3,0);
Insert into SCOTT.ADMINNOTICE (ANUM,AID,ACATEGORY,ATITLE,ACONTENT,ADATE,AHIT,ASTEP,AINDENT) values (4,'ADMIN','�߿����','2���Դϴ�.','2���Դϴ�.
',to_date('20/06/08','RR/MM/DD'),23,4,0);
Insert into SCOTT.ADMINNOTICE (ANUM,AID,ACATEGORY,ATITLE,ACONTENT,ADATE,AHIT,ASTEP,AINDENT) values (21,'ADMIN','�߿����','�߿��� ���������Դϴ�.','�߿��� ���������Դϴ�.!!',to_date('20/06/11','RR/MM/DD'),14,21,0);
Insert into SCOTT.ADMINNOTICE (ANUM,AID,ACATEGORY,ATITLE,ACONTENT,ADATE,AHIT,ASTEP,AINDENT) values (22,'ADMIN','�߿����','568','asgasg',to_date('20/06/11','RR/MM/DD'),11,22,0);
REM INSERTING into SCOTT.MREPLY
SET DEFINE OFF;
Insert into SCOTT.MREPLY (ANUM,MRNUM,MRID,MRCONTENT,MRDATE,MRGROUP,MRSTEP,MRINDENT) values (22,23,'test','�˰ٽ��ϴ�~',to_date('20/06/11','RR/MM/DD'),'23','0','0');
Insert into SCOTT.MREPLY (ANUM,MRNUM,MRID,MRCONTENT,MRDATE,MRGROUP,MRSTEP,MRINDENT) values (21,26,'test','��~',to_date('20/06/11','RR/MM/DD'),'26','0','0');
Insert into SCOTT.MREPLY (ANUM,MRNUM,MRID,MRCONTENT,MRDATE,MRGROUP,MRSTEP,MRINDENT) values (21,27,'test','��!',to_date('20/06/11','RR/MM/DD'),'27','0','0');
Insert into SCOTT.MREPLY (ANUM,MRNUM,MRID,MRCONTENT,MRDATE,MRGROUP,MRSTEP,MRINDENT) values (4,28,'test','������',to_date('20/06/11','RR/MM/DD'),'28','0','0');
Insert into SCOTT.MREPLY (ANUM,MRNUM,MRID,MRCONTENT,MRDATE,MRGROUP,MRSTEP,MRINDENT) values (41,43,'test','��',to_date('20/06/12','RR/MM/DD'),'43','0','0');
Insert into SCOTT.MREPLY (ANUM,MRNUM,MRID,MRCONTENT,MRDATE,MRGROUP,MRSTEP,MRINDENT) values (5,45,'test','���',to_date('20/06/12','RR/MM/DD'),'45','0','0');
Insert into SCOTT.MREPLY (ANUM,MRNUM,MRID,MRCONTENT,MRDATE,MRGROUP,MRSTEP,MRINDENT) values (3,46,'test','1������Դϴ�.',to_date('20/06/12','RR/MM/DD'),'46','0','0');
Insert into SCOTT.MREPLY (ANUM,MRNUM,MRID,MRCONTENT,MRDATE,MRGROUP,MRSTEP,MRINDENT) values (42,47,'test','�˰ٽ��ϴ�.',to_date('20/06/12','RR/MM/DD'),'47','0','0');
Insert into SCOTT.MREPLY (ANUM,MRNUM,MRID,MRCONTENT,MRDATE,MRGROUP,MRSTEP,MRINDENT) values (5,48,'test','���2��',to_date('20/06/12','RR/MM/DD'),'48','0','0');
Insert into SCOTT.MREPLY (ANUM,MRNUM,MRID,MRCONTENT,MRDATE,MRGROUP,MRSTEP,MRINDENT) values (5,49,'test','���3��',to_date('20/06/12','RR/MM/DD'),'49','0','0');
Insert into SCOTT.MREPLY (ANUM,MRNUM,MRID,MRCONTENT,MRDATE,MRGROUP,MRSTEP,MRINDENT) values (4,50,'test','����Դϴ�.',to_date('20/06/12','RR/MM/DD'),'50','0','0');
Insert into SCOTT.MREPLY (ANUM,MRNUM,MRID,MRCONTENT,MRDATE,MRGROUP,MRSTEP,MRINDENT) values (4,15,'test','������',to_date('20/06/10','RR/MM/DD'),'15','0','0');
Insert into SCOTT.MREPLY (ANUM,MRNUM,MRID,MRCONTENT,MRDATE,MRGROUP,MRSTEP,MRINDENT) values (2,16,'test','������',to_date('20/06/10','RR/MM/DD'),'16','0','0');
Insert into SCOTT.MREPLY (ANUM,MRNUM,MRID,MRCONTENT,MRDATE,MRGROUP,MRSTEP,MRINDENT) values (5,17,'test','������',to_date('20/06/10','RR/MM/DD'),'17','0','0');
Insert into SCOTT.MREPLY (ANUM,MRNUM,MRID,MRCONTENT,MRDATE,MRGROUP,MRSTEP,MRINDENT) values (41,41,'test','�˰ٽ��ϴ�^^',to_date('20/06/12','RR/MM/DD'),'41','0','0');
Insert into SCOTT.MREPLY (ANUM,MRNUM,MRID,MRCONTENT,MRDATE,MRGROUP,MRSTEP,MRINDENT) values (22,42,'test','�˰ٽ��ϴ�..',to_date('20/06/12','RR/MM/DD'),'42','0','0');
Insert into SCOTT.MREPLY (ANUM,MRNUM,MRID,MRCONTENT,MRDATE,MRGROUP,MRSTEP,MRINDENT) values (21,25,'test','��',to_date('20/06/11','RR/MM/DD'),'25','0','0');
Insert into SCOTT.MREPLY (ANUM,MRNUM,MRID,MRCONTENT,MRDATE,MRGROUP,MRSTEP,MRINDENT) values (22,44,'test','��',to_date('20/06/12','RR/MM/DD'),'44','0','0');
Insert into SCOTT.MREPLY (ANUM,MRNUM,MRID,MRCONTENT,MRDATE,MRGROUP,MRSTEP,MRINDENT) values (23,51,'test','���.',to_date('20/06/12','RR/MM/DD'),'51','0','0');
Insert into SCOTT.MREPLY (ANUM,MRNUM,MRID,MRCONTENT,MRDATE,MRGROUP,MRSTEP,MRINDENT) values (2,18,'test','������',to_date('20/06/10','RR/MM/DD'),'18','0','0');
Insert into SCOTT.MREPLY (ANUM,MRNUM,MRID,MRCONTENT,MRDATE,MRGROUP,MRSTEP,MRINDENT) values (21,20,'test','��!
',to_date('20/06/11','RR/MM/DD'),'20','0','0');
Insert into SCOTT.MREPLY (ANUM,MRNUM,MRID,MRCONTENT,MRDATE,MRGROUP,MRSTEP,MRINDENT) values (4,13,'test','������',to_date('20/06/10','RR/MM/DD'),'13','0','0');
Insert into SCOTT.MREPLY (ANUM,MRNUM,MRID,MRCONTENT,MRDATE,MRGROUP,MRSTEP,MRINDENT) values (3,14,'test','������',to_date('20/06/10','RR/MM/DD'),'14','0','0');
Insert into SCOTT.MREPLY (ANUM,MRNUM,MRID,MRCONTENT,MRDATE,MRGROUP,MRSTEP,MRINDENT) values (21,19,'test','�˰ٽ��ϴ�!',to_date('20/06/11','RR/MM/DD'),'19','0','0');
Insert into SCOTT.MREPLY (ANUM,MRNUM,MRID,MRCONTENT,MRDATE,MRGROUP,MRSTEP,MRINDENT) values (22,22,'test','�˰ٽ��ϴ�~',to_date('20/06/11','RR/MM/DD'),'22','0','0');
Insert into SCOTT.MREPLY (ANUM,MRNUM,MRID,MRCONTENT,MRDATE,MRGROUP,MRSTEP,MRINDENT) values (21,24,'test','�˰ٽ��ϴ�!',to_date('20/06/11','RR/MM/DD'),'24','0','0');
--------------------------------------------------------
--  DDL for Procedure RE_SEQ
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SCOTT"."RE_SEQ" 
(
sname in varchar2
)
is
val number;
begin
execute immediate 'select '|| sname ||'.nextval from dual ' into val;
execute immediate 'alter sequence ' || sname || ' increment by -'|| val || ' minvalue 0';
execute immediate 'select '|| sname ||'.nextval from dual ' into val;
execute immediate 'alter sequence '|| sname|| ' increment by 1 minvalue 0';
end

/
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "SCOTT"."NOTICE" ADD PRIMARY KEY ("NID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table RECIPE_BOARD
--------------------------------------------------------

  ALTER TABLE "SCOTT"."RECIPE_BOARD" ADD PRIMARY KEY ("RNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table U_USER
--------------------------------------------------------

  ALTER TABLE "SCOTT"."U_USER" ADD CONSTRAINT "PK_USER_ID" PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "SCOTT"."U_USER" MODIFY ("USER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."U_USER" MODIFY ("USER_PW" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."U_USER" MODIFY ("USER_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."U_USER" MODIFY ("USER_EMAIL" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."U_USER" MODIFY ("USER_POINT" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."U_USER" MODIFY ("USER_IMG" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."U_USER" MODIFY ("USER_JOIN_DATE" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."U_USER" MODIFY ("USER_LOGIN_DATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ADMIN
--------------------------------------------------------

  ALTER TABLE "SCOTT"."ADMIN" ADD PRIMARY KEY ("AID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ADMINNOTICE
--------------------------------------------------------

  ALTER TABLE "SCOTT"."ADMINNOTICE" ADD CONSTRAINT "ANUM" PRIMARY KEY ("ANUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "SCOTT"."NOTICE" ADD CONSTRAINT "GID" FOREIGN KEY ("GID")
	  REFERENCES "SCOTT"."U_USER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NREPLY
--------------------------------------------------------

  ALTER TABLE "SCOTT"."NREPLY" ADD CONSTRAINT "NID" FOREIGN KEY ("NID")
	  REFERENCES "SCOTT"."NOTICE" ("NID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RECIPE_BOARD
--------------------------------------------------------

  ALTER TABLE "SCOTT"."RECIPE_BOARD" ADD CONSTRAINT "RID" FOREIGN KEY ("RID")
	  REFERENCES "SCOTT"."U_USER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RECIPE_REPLY
--------------------------------------------------------

  ALTER TABLE "SCOTT"."RECIPE_REPLY" ADD FOREIGN KEY ("PID")
	  REFERENCES "SCOTT"."U_USER" ("USER_ID") ON DELETE CASCADE ENABLE;
 
  ALTER TABLE "SCOTT"."RECIPE_REPLY" ADD FOREIGN KEY ("RNUM")
	  REFERENCES "SCOTT"."RECIPE_BOARD" ("RNUM") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ADMINNOTICE
--------------------------------------------------------

  ALTER TABLE "SCOTT"."ADMINNOTICE" ADD CONSTRAINT "AID" FOREIGN KEY ("AID")
	  REFERENCES "SCOTT"."ADMIN" ("AID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MREPLY
--------------------------------------------------------

  ALTER TABLE "SCOTT"."MREPLY" ADD CONSTRAINT "MRID" FOREIGN KEY ("MRID")
	  REFERENCES "SCOTT"."U_USER" ("USER_ID") ENABLE;
 
  ALTER TABLE "SCOTT"."MREPLY" ADD FOREIGN KEY ("ANUM")
	  REFERENCES "SCOTT"."ADMINNOTICE" ("ANUM") ENABLE;
