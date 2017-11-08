--------------------------------------------------------
--  DDL for View DIM_RESERVEER_DUUR_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_RESERVEER_DUUR_V" ("WEEK_CATEGORY_CODE", "WEEK_CATEGORY_DESC", "WEEKS_ID", "DAY_CATEGORY_CODE", "DAYS_CATEGORY_DESC", "DAYS_ID", "HOURS_CATEGORY_CODE", "HOURS_CATEGORY_DESC", "HOURS_ID", "HQUARTERS_CATEGORY_CODE", "HQUARTERS_CATEGORY_DESC", "QUARTERS_ID", "RANGE_LOW_VALUE", "RANGE_HIGH_VALUE", "ID", "DATE_CREATED", "DATE_UPDATED", "DATE_DELETED", "AUD_ID_CREATED", "AUD_ID_UPDATED", "AUD_ID_DELETED", "CURR_ID") AS 
  SELECT   "WEEK_CATEGORY_CODE","WEEK_CATEGORY_DESC","WEEKS_ID","DAY_CATEGORY_CODE","DAYS_CATEGORY_DESC","DAYS_ID","HOURS_CATEGORY_CODE","HOURS_CATEGORY_DESC","HOURS_ID","HQUARTERS_CATEGORY_CODE","HQUARTERS_CATEGORY_DESC","QUARTERS_ID","RANGE_LOW_VALUE","RANGE_HIGH_VALUE","ID","DATE_CREATED","DATE_UPDATED","DATE_DELETED","AUD_ID_CREATED","AUD_ID_UPDATED","AUD_ID_DELETED","CURR_ID"
     FROM   ODS_HLP_PARKEERDUUR_H
     where curr_id = 'Y' 

;
