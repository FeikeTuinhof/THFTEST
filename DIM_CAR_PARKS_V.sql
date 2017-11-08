--------------------------------------------------------
--  DDL for View DIM_CAR_PARKS_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_CAR_PARKS_V" ("CAP_CAR_PARK_NR", "CAP_DESCRIPTION", "CAP_CODE", "DEV_CODE", "DEV_DESCRIPTION", "DEV_SOURCE_CODE", "DEV_DEVICE_NR") AS 
  SELECT   "CAP_CAR_PARK_NR",
            "CAP_DESCRIPTION",
            "CAP_CODE",
            "DEV_CODE",
            "DEV_DESCRIPTION",
            "DEV_SOURCE_CODE",
            "DEV_DEVICE_NR"
     FROM   (  SELECT   p.car_park_nr cap_car_park_nr,
                        p.description cap_description,
                        p.code cap_code,
                        d.code dev_code,
                        d.description dev_description,
                        d.source_code dev_source_code,
                        d.device_nr dev_device_nr
                 FROM   ods_car_parks p, ods_devices d
                WHERE   d.cap_id = p.id AND d.curr_id = 'Y'
             ORDER BY   p.car_park_nr, d.device_nr)
   UNION  
   SELECT   -1 cap_car_park_nr,
            'ONBEKEND' cap_description,
            '-1' cap_code,
            '-1' dev_code,
            'ONBEKEND' dev_description,
            'ONBEKEND' dev_source_code,
            -1 dev_device_nr
     FROM   dual
   UNION   
   SELECT   -2 cap_car_park_nr,
            'ONBEKEND-LEEG' cap_description,
            '-2' cap_code,
            '-2' dev_code,
            'ONBEKEND-LEEG' dev_description,
            'ONBEKEND-LEEG' dev_source_code,
            -2 dev_device_nr
     FROM   dual 

;
