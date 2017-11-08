--------------------------------------------------------
--  DDL for View DIM_LOCATIE_TERREIN_CHK1_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_LOCATIE_TERREIN_CHK1_V" ("FACT_TABLE", "LOCATIEGROEP", "LOCATIE", "TERREIN", "CAR_PARK_NR", "DEVICE_NR", "DEVICE_CODE", "NIVO", "AANTAL", "PRICE_EXCL_VAT", "PARKING_DURATION", "KARENTZTIJD", "MIN_IN_DATE_TIME", "MAX_IN_DATE_TIME") AS 
  select 'fact_parkering' fact_table
, d.locatiegroep
, d.locatie
, d.terrein
, d.car_park_nr
, d.device_nr
, d.device_code
, d.nivo 
, sum(f.aantal) aantal
, sum(f.price_excl_vat) price_excl_vat
, sum(f.parking_duration) parking_duration
, sum(f.karentztijd)  karentztijd
, min(f.in_date_time) min_in_date_time
, max(f.in_date_time) max_in_date_time
from fact_parkering f
,    dim_locatie_terrein d
where  f.dim_locatie_terrein = d.id (+)
and f.curr_id = 'Y'
and d.curr_id = 'Y'
group by d.locatiegroep
, d.locatie
, d.terrein
, d.car_park_nr
, d.device_nr
, d.device_code
, d.nivo 

;
