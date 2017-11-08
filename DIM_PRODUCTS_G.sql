--------------------------------------------------------
--  DDL for View DIM_PRODUCTS_G
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_PRODUCTS_G" ("PRODUCTGROEPCODE", "PRODUCT_CATEGORIE", "PARENT_POOL", "PRODUCT_POOL", "PRODUCT", "CODE", "MATCH_CODE") AS 
  SELECT   PRODUCTGROEPCODE,
            PRODUCT_CATEGORIE,
            PARENT_POOL,
            PRODUCT_POOL,
            PRODUCT,
            CODE,
            MATCH_CODE || ',r_' || code || ',' MATCH_CODE
     FROM   ODS_HLP_PRODUKTEN_H where curr_id = 'Y' 

;
