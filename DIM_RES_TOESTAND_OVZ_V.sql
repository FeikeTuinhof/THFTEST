--------------------------------------------------------
--  DDL for View DIM_RES_TOESTAND_OVZ_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_RES_TOESTAND_OVZ_V" ("TOESTAND_CODE", "OMSCHR", "AANTAL") AS 
  select toestand_code, omschr, sum(aantal)   aantal
from ODS_RES_TOESTAND_OVZ
group by toestand_code, omschr 

;
