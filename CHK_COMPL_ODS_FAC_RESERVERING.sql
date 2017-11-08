--------------------------------------------------------
--  DDL for View CHK_COMPL_ODS_FAC_RESERVERING
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."CHK_COMPL_ODS_FAC_RESERVERING" ("RESERVATION_DATE_TIME", "AANTAL", "OPMERKING") AS 
  select   reservation_date_time , aantal,
          case when aantal > 0
          then 'opmerking check_compl_ods_fac_reservering view wat er mis is ods tov fact in pimsp'
          end  opmerking
 from (  
  select  to_char(cty.reservation_date_time,'YYYYMMDD') reservation_date_time, count(1) aantal from ods_cty_reservations cty
 where cty.reservation_date_time between sysdate-100  and sysdate and cty.curr_id = 'Y' 
 and  not exists  (
 select 1
    from fact_reservering f , dim_locatie_terrein p , dim_days d where  
    f.dim_days_entry=d.id 
    and f.reservation_date_time between sysdate-100  and sysdate  
 and f.dim_locatie_terrein=p.id  
 and p.curr_id = 'Y' and d.curr_id = 'Y' and f.curr_id = 'Y'  and p.nivo=1  
 and  cty.reservation_id=f.reservation_id
 )
 group by   to_char(cty.reservation_date_time,'YYYYMMDD')
--  union  --om te testen
--  select  to_char(sysdate,'YYYYMMDD'),2 from dual
  )
union
select  to_char(sysdate,'YYYYMMDD')   reservation_date_time , count(execute_it) aantal,
          case when  count(execute_it) > 0
          then 'opmerking chk_compl_ods_fac_reservering view wat er mis is cache tov ods in pimsp'
          end  opmerking
          from PIMS_MISSERS_CT_V 

;
