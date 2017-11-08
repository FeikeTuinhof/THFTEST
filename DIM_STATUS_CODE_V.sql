--------------------------------------------------------
--  DDL for View DIM_STATUS_CODE_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_STATUS_CODE_V" ("STATUS_CODE") AS 
  SELECT   STATUS_CODE
     FROM   ODS_STATUS_CODE
    WHERE   STATUS_CODE IS NOT NULL
   AND DATE_UPDATED >= (GRIP_ETL.LAST_DATE_PROCESSED)
   --
   UNION
   --
   SELECT   '-1'
     FROM   DUAL 
;
