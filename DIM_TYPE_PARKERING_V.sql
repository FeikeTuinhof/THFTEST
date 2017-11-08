--------------------------------------------------------
--  DDL for View DIM_TYPE_PARKERING_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_TYPE_PARKERING_V" ("TYPE_PARKERING_CODE", "TYPE_PARKERING", "ARTICLE_NR", "DESCRIPTION", "SOURCE_CODE") AS 
  SELECT   "TYPE_PARKERING_CODE",
              "TYPE_PARKERING",
              "ARTICLE_NR",
              "DESCRIPTION",
              source_code
       FROM   ODS_HLP_TYPE_PARKERING_H where curr_id = 'Y'
   ORDER BY   article_nr 

;
