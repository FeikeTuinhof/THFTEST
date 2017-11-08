--------------------------------------------------------
--  DDL for View DIM_LOCATION_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_LOCATION_V" ("SRC_ID", "AAS_CODE", "LOCATION") AS 
  SELECT   ID SRC_ID, AAS_CODE, LOCATION
     FROM   ODS_LOCATIONS
    WHERE   LOCATION IS NOT NULL
   --AND DATE_UPDATED >= (GRIP_ETL.LAST_DATE_PROCESSED)
   --
   UNION
   --
   SELECT   -1, '-1', '-1' FROM DUAL 
;
