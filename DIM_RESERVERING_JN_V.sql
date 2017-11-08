--------------------------------------------------------
--  DDL for View DIM_RESERVERING_JN_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_RESERVERING_JN_V" ("CODE", "OMSCHR", "RESERVERING") AS 
  SELECT   'J' code, 'Ja' omschr, 'Een reservering' reservering FROM DUAL
   UNION
   SELECT   'N', 'Nee', 'Geen reservering' FROM DUAL
   UNION
   SELECT   '-1', 'ONBEKEND', 'ONBEKEND' FROM DUAL
   UNION
   SELECT   '-2', 'ONBEKEND-LEEG', 'ONBEKEND-LEEG' FROM DUAL 

;
