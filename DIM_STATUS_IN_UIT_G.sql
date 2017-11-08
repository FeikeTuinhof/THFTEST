--------------------------------------------------------
--  DDL for View DIM_STATUS_IN_UIT_G
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_STATUS_IN_UIT_G" ("CODE", "OMSCHR", "STATUS") AS 
  SELECT   'I' code, 'In' omschr, 'Oprijding' status FROM DUAL
   UNION
   SELECT   'U', 'Uit', 'Uitrijding zonder inrijding' FROM DUAL
   UNION
   SELECT   'IU', 'In Uit', 'Complete transactie' FROM DUAL
   UNION
   SELECT   '-1', 'ONBEKEND', 'ONBEKEND' FROM DUAL
   UNION
   SELECT   '-2', 'ONBEKEND-LEEG', 'ONBEKEND-LEEG' FROM DUAL 

;
