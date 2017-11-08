--------------------------------------------------------
--  DDL for View CHAUNTRY_ODS_DATE_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."CHAUNTRY_ODS_DATE_V" ("EXTRACTIE_DATUM") AS 
  select extractie_datum 
from (
    select x.*, row_number() over(partition by top_level order by id desc ) vnr
    from ods_audit x 
    where load_date > sysdate -8
    and top_level = 'ODS_CHAUNTRY_DAILY'
    order by load_date desc
)
where vnr = 1 

;
