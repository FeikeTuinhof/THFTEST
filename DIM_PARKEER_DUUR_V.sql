--------------------------------------------------------
--  DDL for View DIM_PARKEER_DUUR_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_PARKEER_DUUR_V" ("WEEK_CATEGORY_CODE", "WEEK_CATEGORY_DESC", "WEEKS_ID", "DAY_CATEGORY_CODE", "DAYS_CATEGORY_DESC", "DAYS_ID", "HOURS_CATEGORY_CODE", "HOURS_CATEGORY_DESC", "HOURS_ID", "HQUARTERS_CATEGORY_CODE", "HQUARTERS_CATEGORY_DESC", "QUARTERS_ID", "RANGE_LOW_VALUE", "RANGE_HIGH_VALUE", "AUD_ID_CREATED", "ID", "DATE_CREATED", "DATE_UPDATED", "DATE_DELETED", "AUD_ID_UPDATED", "AUD_ID_DELETED", "CURR_ID") AS 
  SELECT   "WEEK_CATEGORY_CODE",
            "WEEK_CATEGORY_DESC",
            "WEEKS_ID",
            "DAY_CATEGORY_CODE",
            "DAYS_CATEGORY_DESC",
            "DAYS_ID",
            "HOURS_CATEGORY_CODE",
            "HOURS_CATEGORY_DESC",
            "HOURS_ID",
            "HQUARTERS_CATEGORY_CODE",
            "HQUARTERS_CATEGORY_DESC",
            "QUARTERS_ID",
            "RANGE_LOW_VALUE",
            "RANGE_HIGH_VALUE",
            "AUD_ID_CREATED",
            "ID",
            "DATE_CREATED",
            "DATE_UPDATED",
            "DATE_DELETED",
            "AUD_ID_UPDATED",
            "AUD_ID_DELETED",
            "CURR_ID"
     FROM   ods_hlp_parkeerduur_h
     where curr_id = 'Y' 

;
