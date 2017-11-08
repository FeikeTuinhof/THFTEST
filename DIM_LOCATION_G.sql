--------------------------------------------------------
--  DDL for View DIM_LOCATION_G
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_LOCATION_G" ("SRC_ID", "AAS_CODE", "LOCATION") AS 
  SELECT   ID SRC_ID, AAS_CODE, LOCATION
     FROM   ODS_LOCATIONS
    WHERE   LOCATION IS NOT NULL
   --AND DATE_UPDATED >= (to_date('20-01-2015 08:07:04','dd-mm-yyyy hh24:mi:ss') /* =GRIP_ETL.LAST_DATE_PROCESSED */ )
   --
   UNION
   --
   SELECT   -1, '-1', '-1' FROM DUAL 
;
