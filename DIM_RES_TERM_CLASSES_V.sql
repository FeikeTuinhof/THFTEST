--------------------------------------------------------
--  DDL for View DIM_RES_TERM_CLASSES_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_RES_TERM_CLASSES_V" ("DIMENSION_KEY", "TOTAL_ID", "TOTAL_CODE", "TOTAL_DESCRIPTION", "TOTAL_DURATION", "WEEKS_ID", "WEEKS_CODE", "WEEKS_DESCRIPTION", "WEEKS_DURATION", "DAYS_ID", "DAYS_CODE", "DAYS_DESCRIPTION", "DAYS_DURATION", "RES_TERM_LOW_VALUE", "RES_TERM_HIGH_VALUE", "ODS_ID", "CATEGORY_ID", "CATEGORY_CODE", "CATEGORY_DESCRIPTION") AS 
  select "DIMENSION_KEY","TOTAL_ID","TOTAL_CODE","TOTAL_DESCRIPTION","TOTAL_DURATION","WEEKS_ID","WEEKS_CODE","WEEKS_DESCRIPTION","WEEKS_DURATION","DAYS_ID","DAYS_CODE","DAYS_DESCRIPTION","DAYS_DURATION","RES_TERM_LOW_VALUE","RES_TERM_HIGH_VALUE","ODS_ID","CATEGORY_ID","CATEGORY_CODE","CATEGORY_DESCRIPTION" from pims.PIMS_MRT_RES_TERM_CLASSES 

;
