--------------------------------------------------------
--  DDL for View DIM_GATE_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_GATE_V" ("GATE_NR") AS 
  SELECT GATE_NR
FROM   ODS_GATE
WHERE  DATE_UPDATED >= (GRIP_ETL.LAST_DATE_PROCESSED)
--
UNION
--
SELECT '-1'
FROM DUAL 
;
