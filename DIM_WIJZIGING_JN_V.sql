--------------------------------------------------------
--  DDL for View DIM_WIJZIGING_JN_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_WIJZIGING_JN_V" ("CODE", "OMSCHR", "WIJGIGING") AS 
  SELECT   'J' code, 'Ja' omschr, 'Wel gewijzigd' wijgiging FROM DUAL
   UNION
   SELECT   'N', 'Nee', 'Niet gewijzigd' FROM DUAL
   UNION
   SELECT   '-1', 'ONBEKEND', 'ONBEKEND' FROM DUAL
   UNION
   SELECT   '-2', 'ONBEKEND-LEEG', 'ONBEKEND-LEEG' FROM DUAL 

;
