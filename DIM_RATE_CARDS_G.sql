--------------------------------------------------------
--  DDL for View DIM_RATE_CARDS_G
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_RATE_CARDS_G" ("CTY_CAR_PARK", "PRODUCT_CODE", "RATE_CARD_CODE", "RATE_CARD_DESC", "EFFECTIVE_DATE") AS 
  select distinct 
       cty_car_park
,      product_code
,      rate_card_code
,      rate_card_desc
,      EFFECTIVE_DATE
from ODS_RATE_CARDS 
where curr_id = 'Y' 

;
