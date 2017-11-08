--------------------------------------------------------
--  DDL for View DIM_FLIGHT_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_FLIGHT_V" ("FLIGHT_NR_IATA", "AIRLINE_IATA", "FLIGHT_NR_ICAO", "AIRLINE_ICAO", "FLIGHT_NR") AS 
  SELECT   FLIGHT_NR_IATA
   ,        AIRLINE_IATA
   ,        FLIGHT_NR_ICAO
   ,        AIRLINE_ICAO
   ,        FLIGHT_NR
     FROM   ODS_FLIGHT
    WHERE   DATE_UPDATED >= (GRIP_ETL.LAST_DATE_PROCESSED)
   --
   UNION
   --
   SELECT   '-1','-1','-1','-1','-1' FROM DUAL 
;
