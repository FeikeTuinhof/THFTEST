--------------------------------------------------------
--  DDL for View DIM_ANNULERING_JN_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_ANNULERING_JN_V" ("CODE", "OMSCHR", "ANNULERING") AS 
  SELECT   'J' code, 'Ja' omschr, 'Wel geannuleerd' annulering FROM DUAL
   UNION
   SELECT   'N', 'Nee', 'Niet geannuleerd' FROM DUAL
   UNION
   SELECT   '-1', 'ONBEKEND', 'ONBEKEND' FROM DUAL
   UNION
   SELECT   '-2', 'ONBEKEND-LEEG', 'ONBEKEND-LEEG' FROM DUAL 

;
