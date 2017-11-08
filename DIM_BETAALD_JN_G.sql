--------------------------------------------------------
--  DDL for View DIM_BETAALD_JN_G
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_BETAALD_JN_G" ("CODE", "OMSCHR", "BETAALD") AS 
  SELECT   'J' code, 'Ja' omschr, 'Wel betaald' betaald FROM DUAL
   UNION
   SELECT   'N', 'Nee', 'Niet betaald' FROM DUAL
   UNION
   SELECT   '-1', 'ONBEKEND', 'ONBEKEND' FROM DUAL
   UNION
   SELECT   '-2', 'ONBEKEND-LEEG', 'ONBEKEND-LEEG' FROM DUAL 

;
