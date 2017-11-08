--------------------------------------------------------
--  DDL for View DIM_POSTCODES_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_POSTCODES_V" ("LAND_CODE", "LAND_DESCRIPTION", "PROV_CODE", "PROV_DESCRIPTION", "AREA_CODE", "AREA_DESCRIPTION", "POSTCODE_CODE", "POSTCODE_DESCRIPTION") AS 
  SELECT   "LAND_CODE",
            "LAND_DESCRIPTION",
            "PROV_CODE",
            "PROV_DESCRIPTION",
            "AREA_CODE",
            "AREA_DESCRIPTION",
            "POSTCODE_CODE",
            "POSTCODE_DESCRIPTION"
     FROM   ODS_POSTCODES
     union      
   SELECT   'ONBEKEND'"LAND_CODE",
            'ONBEKEND'"LAND_DESCRIPTION",
            'ONBEKEND'"PROV_CODE",
            'ONBEKEND'"PROV_DESCRIPTION",
            'ONBEKEND'"AREA_CODE",
            'ONBEKEND'"AREA_DESCRIPTION",
            'ONBEKEND'"POSTCODE_CODE",
            'ONBEKEND'"POSTCODE_DESCRIPTION"
     FROM   dual
     union
   SELECT   'ONBEKEND-LEEG'"LAND_CODE",
            'ONBEKEND-LEEG'"LAND_DESCRIPTION",
            'ONBEKEND-LEEG'"PROV_CODE",
            'ONBEKEND-LEEG'"PROV_DESCRIPTION",
            'ONBEKEND-LEEG'"AREA_CODE",
            'ONBEKEND-LEEG'"AREA_DESCRIPTION",
            'ONBEKEND-LEEG'"POSTCODE_CODE",
            'ONBEKEND-LEEG'"POSTCODE_DESCRIPTION"
     FROM   dual 

;
