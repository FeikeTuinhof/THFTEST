--------------------------------------------------------
--  DDL for View DIM_RESERVERINGS_TERMIJN_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_RESERVERINGS_TERMIJN_V" ("WEEK_CATEGORY_CODE", "WEEK_CATEGORY_DESC", "NUM_WEEKS", "DAY_CATEGORY_CODE", "DAY_CATEGORY_DESC", "NUM_DAYS", "CATEGORY", "RANGE_LOW_VALUE", "RANGE_HIGH_VALUE") AS 
  SELECT   "WEEK_CATEGORY_CODE",
            "WEEK_CATEGORY_DESC",
            "NUM_WEEKS",
            "DAY_CATEGORY_CODE",
            "DAY_CATEGORY_DESC",
            "NUM_DAYS",
            "CATEGORY",
            "RANGE_LOW_VALUE",
            "RANGE_HIGH_VALUE"
     FROM   ODS_HLP_RESERVERINGSTERMIJN_H
     where curr_id = 'Y' 

;
