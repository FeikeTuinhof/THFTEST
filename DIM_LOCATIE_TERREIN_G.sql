--------------------------------------------------------
--  DDL for View DIM_LOCATIE_TERREIN_G
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_LOCATIE_TERREIN_G" ("LOCATIEGROEP", "LOCATIE", "TERREIN", "CAR_PARK_NR", "DEVICE", "DEVICE_CODE", "DEVICE_NR", "NIVO", "NIVO_OMSCHRIJVING") AS 
  SELECT   t.LOCATIEGROEP,
            t.LOCATIE,
            t.TERREIN, 
            t.car_park_nr,
            t.DEVICE,
            t.DEVICE_CODE,
            t.DEVICE_NR,
            1 NIVO,
            'DEVICE' NIVO_OMSCHRIJVING
     FROM   (SELECT   *
               FROM   ods_hlp_locatie_terrein_h
              WHERE   curr_id = 'Y') t
   UNION
     SELECT   t.LOCATIEGROEP,
              t.LOCATIE,
              t.TERREIN,
              min(t.car_park_nr) car_park_nr,
              NULL DEVICE,
              NULL DEVICE_CODE,
              TO_NUMBER (-2000 - abs(MAX (device_nr))) DEVICE_NR,  -- jag aanpassing 19-09-2014
              2 nivo,
              'TERREIN' NIVO_OMSCHRIJVING
       FROM   (SELECT   *
                 FROM   ods_hlp_locatie_terrein_h
                WHERE   curr_id = 'Y') t
   GROUP BY   t.LOCATIEGROEP, t.LOCATIE, t.TERREIN
   UNION
     SELECT   LOCATIEGROEP,
              LOCATIE,
              NULL TERREIN,
              null car_park_nr,
              NULL DEVICE,
              NULL DEVICE_CODE,
              TO_NUMBER ('-3000' || abs(MAX (device_nr))) DEVICE_NR,
              3 nivo,
              'LOCATIE' NIVO_OMSCHRIJVING
       FROM   (SELECT   *
                 FROM   ods_hlp_locatie_terrein_h
                WHERE   curr_id = 'Y')
   GROUP BY   LOCATIEGROEP, LOCATIE
   UNION
     SELECT   LOCATIEGROEP,
              NULL LOCATIE,
              NULL TERREIN,
              null car_park_nr,
              NULL DEVICE,
              NULL DEVICE_CODE,
              TO_NUMBER ('-4000' || abs(MAX (device_nr))) DEVICE_NR,
              4 nivo,
              'LOCATIEGROEP' NIVO_OMSCHRIJVING
       FROM   (SELECT   *
                 FROM   ods_hlp_locatie_terrein_h
                WHERE   curr_id = 'Y')
   GROUP BY   LOCATIEGROEP
   ORDER BY   nivo, device_nr 

;
