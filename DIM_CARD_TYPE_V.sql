--------------------------------------------------------
--  DDL for View DIM_CARD_TYPE_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_CARD_TYPE_V" ("CARD_TYPE") AS 
  SELECT CARD_TYPE
FROM   ODS_CARD_TYPE
WHERE  DATE_UPDATED >= (GRIP_ETL.LAST_DATE_PROCESSED)
--
UNION
--
SELECT '-1'
FROM DUAL 
;
