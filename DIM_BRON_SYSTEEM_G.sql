--------------------------------------------------------
--  DDL for View DIM_BRON_SYSTEEM_G
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_BRON_SYSTEEM_G" ("SRC_ID", "CODE", "DESCRIPTION") AS 
  select id src_id 
,    code
,    description 
from ods_data_sources 

;
