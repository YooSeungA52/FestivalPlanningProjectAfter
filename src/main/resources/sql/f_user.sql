--------------------------------------------------------
--  파일이 생성됨 - 수요일-6월-28-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table F_USER
--------------------------------------------------------

  CREATE TABLE "SCOTT"."F_USER" 
   (	"LOGIN_ID" VARCHAR2(200 BYTE), 
	"LOGIN_PW" VARCHAR2(200 BYTE), 
	"NAME" VARCHAR2(100 BYTE), 
	"EMAIL" VARCHAR2(200 BYTE), 
	"TEL_NUMBER" VARCHAR2(200 BYTE), 
	"BIRTH" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXAMPLE" ;
REM INSERTING into SCOTT.F_USER
SET DEFINE OFF;
Insert into SCOTT.F_USER (LOGIN_ID,LOGIN_PW,NAME,EMAIL,TEL_NUMBER,BIRTH) values ('pinata1234','pinata1234!','관리자','pinata1234@gmail.com','010-1234-5678','2023-06-28');
--------------------------------------------------------
--  DDL for Index SYS_C007783
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SYS_C007783" ON "SCOTT"."F_USER" ("LOGIN_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  Constraints for Table F_USER
--------------------------------------------------------

  ALTER TABLE "SCOTT"."F_USER" MODIFY ("LOGIN_ID" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."F_USER" MODIFY ("LOGIN_PW" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."F_USER" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."F_USER" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."F_USER" MODIFY ("TEL_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."F_USER" ADD PRIMARY KEY ("LOGIN_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EXAMPLE"  ENABLE;
  ALTER TABLE "SCOTT"."F_USER" MODIFY ("BIRTH" NOT NULL ENABLE);
