--------------------------------------------------------
--  DDL for View DIM_DIRECTION_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_DIRECTION_V" ("DIRECTION") AS 
  SELECT DIRECTION
FROM   ODS_DIRECTION
WHERE  DATE_UPDATED >= (GRIP_ETL.LAST_DATE_PROCESSED)
--
UNION
--
SELECT '-1' FROM DUAL 
;
