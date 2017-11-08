--------------------------------------------------------
--  DDL for View DIM_CABIN_CLASS_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_CABIN_CLASS_V" ("CABIN_CLASS") AS 
  SELECT CABIN_CLASS
FROM   ODS_CABIN_CLASS
WHERE  DATE_UPDATED >= (GRIP_ETL.LAST_DATE_PROCESSED)
--
UNION
--
SELECT '-1'
FROM DUAL 
;
