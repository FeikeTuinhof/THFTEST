--------------------------------------------------------
--  DDL for View DIM_AIRPORT_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_AIRPORT_V" ("AIRPORT_IATA", "AIRPORT_ICAO") AS 
  SELECT AIRPORT_IATA
,      AIRPORT_ICAO
FROM   ODS_AIRPORT 
WHERE  DATE_UPDATED >= (GRIP_ETL.LAST_DATE_PROCESSED)
--
UNION
--
SELECT '-1','-1'
FROM DUAL 
;
