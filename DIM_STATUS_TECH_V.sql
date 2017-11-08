--------------------------------------------------------
--  DDL for View DIM_STATUS_TECH_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_STATUS_TECH_V" ("STATUS_TECH") AS 
  SELECT   STATUS_TECH
     FROM   ODS_STATUS_TECH
    WHERE   DATE_UPDATED >= (GRIP_ETL.LAST_DATE_PROCESSED)
   --
   UNION
   --
   SELECT   '-1'
     FROM   DUAL 
;
