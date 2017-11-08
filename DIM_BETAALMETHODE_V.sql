--------------------------------------------------------
--  DDL for View DIM_BETAALMETHODE_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_BETAALMETHODE_V" ("PAYMENT_METHOD_CODE", "PAYMENT_TYPE_CODE") AS 
  select payment_method_code
,      payment_type_code
from ODS_PAYMENT_METHODS 

;
