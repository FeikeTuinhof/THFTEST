--------------------------------------------------------
--  DDL for View DIM_EVENT_LEVEL_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_EVENT_LEVEL_V" ("EVENT_LEVEL") AS 
  SELECT EVENT_LEVEL
FROM   ODS_EVENT_LEVEL
WHERE  DATE_UPDATED >= (GRIP_ETL.LAST_DATE_PROCESSED)
--
UNION
--
SELECT '-1' FROM DUAL 
;
