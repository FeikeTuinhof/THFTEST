--------------------------------------------------------
--  DDL for View DIM_PROMOTIONS_G
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_PROMOTIONS_G" ("CLUSTER1", "CLUSTER2", "PROMOTION_CODE", "PROMOTION_DESC") AS 
  SELECT   DISTINCT cluster1,
                     cluster2,
                     promotion_code,
                     promotion_desc
     FROM   ods_hlp_promotions_h
   WHERE   curr_id = 'Y' 

;
