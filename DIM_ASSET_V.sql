--------------------------------------------------------
--  DDL for View DIM_ASSET_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_ASSET_V" ("AAS_CODE", "LOCATION") AS 
  SELECT   AAS_CODE,LOCATION
     FROM   ODS_ASSET
    WHERE   AAS_CODE IS NOT NULL
   AND DATE_UPDATED >= (GRIP_ETL.LAST_DATE_PROCESSED)
   --
   UNION
   --
   SELECT   '-1','-1' FROM DUAL 
;
