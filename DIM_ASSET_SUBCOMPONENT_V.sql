--------------------------------------------------------
--  DDL for View DIM_ASSET_SUBCOMPONENT_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_ASSET_SUBCOMPONENT_V" ("AAS_CODE") AS 
  SELECT   AAS_CODE
     FROM   ODS_ASSET_SUBCOMPONENT
    WHERE   AAS_CODE IS NOT NULL
            AND DATE_UPDATED >= (GRIP_ETL.LAST_DATE_PROCESSED)
   --
   UNION
   --
   SELECT   '-1' FROM DUAL 
;
