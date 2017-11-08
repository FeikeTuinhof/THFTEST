--------------------------------------------------------
--  DDL for View CHANGED_ENTRIES_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."CHANGED_ENTRIES_V" ("TRANSACTION_NR") AS 
  select transaction_nr 
    from ods_entries e
    ,    (  select grip_utils.get_date('FACT_CHAUNTRY_DAILY')  last_run from dual ) t
    where curr_id = 'Y'
    and   nvl(e.date_updated,e.date_created) >= last_run 

;
