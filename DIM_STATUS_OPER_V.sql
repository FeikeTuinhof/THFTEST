--------------------------------------------------------
--  DDL for View DIM_STATUS_OPER_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_STATUS_OPER_V" ("STATUS_OPER") AS 
  SELECT   STATUS_OPER
     FROM   ODS_STATUS_OPER
    WHERE   DATE_UPDATED >= (GRIP_ETL.LAST_DATE_PROCESSED)
   --
   UNION
   --
   -- Eenmalig het -1 record aanmaken.
   SELECT   '-1'
     FROM   DUAL 
;
