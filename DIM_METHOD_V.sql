--------------------------------------------------------
--  DDL for View DIM_METHOD_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_METHOD_V" ("METHOD") AS 
  SELECT METHOD
FROM   ODS_METHOD
WHERE  DATE_UPDATED >= (GRIP_ETL.LAST_DATE_PROCESSED)
--
UNION
--
SELECT '-1'
FROM   DUAL 
;
