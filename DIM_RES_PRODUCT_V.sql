--------------------------------------------------------
--  DDL for View DIM_RES_PRODUCT_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_RES_PRODUCT_V" ("PRODUCT", "PRODUCT_POOL", "PRODUCT_CATEGORY", "PRODUCT_GROUP_CODE", "PRODUCTGROEPCODE", "ODS_PRODUCTS_ID") AS 
  SELECT   p.description   product,
            p.code          product_pool  ,                      
            c.category_desc product_category,
            g.product_group_code,
            g.product_group productgroepcode,
            p.id            ods_products_id
     FROM   ods_products p, ods_product_groups g, ods_product_categories c
    WHERE   p.curr_id = 'Y' AND p.pdg_id = g.id AND p.pdc_id = c.id 

;
