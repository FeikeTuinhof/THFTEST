--------------------------------------------------------
--  DDL for View DIM_ACTUELE_STAND_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_ACTUELE_STAND_V" ("CODE", "OMSCHR") AS 
  select '-1' Code , 'ONBEKEND'      omschr from dual union
  select '-2' Code , 'ONBEKEND-LEEG' omschr from dual union
  select 'J' Code , 'Actuele stand'  omschr from dual union
  select 'N' Code , 'Alle standen'   omschr from dual 

;
