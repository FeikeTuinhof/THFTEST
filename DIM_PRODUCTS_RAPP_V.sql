--------------------------------------------------------
--  DDL for View DIM_PRODUCTS_RAPP_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_PRODUCTS_RAPP_V" ("DATUM_AANMAAK", "DATUM_WIJZIGING", "CODE", "PRODUCTGROEPCODE", "PRODUCT_CATEGORIE", "PARENT_POOL", "PRODUCT_POOL", "PRODUCT") AS 
  select DATE_CREATED datum_aanmaak ,DATE_UPDATED datum_wijziging , code,  productgroepcode, product_categorie, parent_pool, product_pool, product 
from DIM_PRODUCTS where DATE_UPDATED > sysdate -1
order by code 

;
