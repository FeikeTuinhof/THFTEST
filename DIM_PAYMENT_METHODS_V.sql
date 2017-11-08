--------------------------------------------------------
--  DDL for View DIM_PAYMENT_METHODS_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_PAYMENT_METHODS_V" ("ODS_ID", "PAYMENT_METHOD_CODE", "PAYMENT_TYPE_CODE") AS 
  SELECT   id ods_id, PAYMENT_METHOD_CODE, PAYMENT_TYPE_CODE
     FROM   ODS_HLP_BETAALWIJZE_H where curr_id = 'Y' 

;
