--------------------------------------------------------
--  DDL for View CHK_FLH_FILE_SETS_INFO_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."CHK_FLH_FILE_SETS_INFO_V" ("ALL_DAYS", "SB", "SK", "CT", "SBH_CACHE", "SKH_CACHE", "CTH_CACHE") AS 
  SELECT   d.all_days,
              NVL (sb.extractie_dag, 'X') sb,
              NVL (sk.extractie_dag, 'X') sk,
              NVL (ct.extractie_dag, 'X') ct,
              NVL (sbh.bestandsnaam, 'X') sbh_cache,
              NVL (skh.bestandsnaam, 'X') skh_cache,
              NVL (cth.bestandsnaam, 'X') cth_cache
       FROM   (SELECT   DISTINCT SUBSTR (file_set_name, 1, 10) extractie_dag
                 FROM   grip_flh_file_sets
                WHERE   fk_status_code = 'SUCCESS'
                        AND fk_source_code = 'SKIDATA') sk,
              (SELECT   DISTINCT SUBSTR (file_set_name, 1, 8) extractie_dag
                 FROM   grip_flh_file_sets
                WHERE   fk_status_code = 'SUCCESS' AND fk_source_code = 'SB')
              sb,
              (SELECT   DISTINCT SUBSTR (file_set_name, 1, 8) extractie_dag
                 FROM   grip_flh_file_sets
                WHERE   fk_status_code = 'SUCCESS'
                        AND fk_source_code = 'CHAUNTRY') ct,
              (SELECT   TO_DATE (the_day, 'ddmmyyyy') + ROWNUM - 1 all_days,
                        TO_CHAR (TO_DATE (the_day, 'ddmmyyyy') + ROWNUM - 1,
                                 'yymmdd')
                           sk_days,
                        TO_CHAR (TO_DATE (the_day, 'ddmmyyyy') + ROWNUM - 1,
                                 'yyyymmdd')
                           sb_days,
                        TO_CHAR (TO_DATE (the_day, 'ddmmyyyy') + ROWNUM - 1,
                                 'yyyymmdd')
                           ct_days
                 FROM   user_objects, (SELECT   '01012011' the_day FROM DUAL)
                WHERE   TO_DATE (the_day, 'ddmmyyyy') + ROWNUM - 1 <= SYSDATE)
              d,
              (SELECT   DISTINCT bestandsnaam
                 FROM   stg_audit_h
                WHERE   source_code = 'SKIDATA' AND curr_id = 'Y') skh,
              (SELECT   DISTINCT bestandsnaam
                 FROM   stg_audit_h
                WHERE   source_code = 'SB' AND curr_id = 'Y') sbh,
              (SELECT   DISTINCT SUBSTR (bestandsnaam, 1, 8) bestandsnaam
                 FROM   stg_audit_h
                WHERE   source_code = 'CHAUNTRY' AND curr_id = 'Y') cth
      WHERE       d.sk_days = sk.extractie_dag(+)
              AND d.sb_days = sb.extractie_dag(+)
              AND d.ct_days = ct.extractie_dag(+)
              AND d.sk_days = SUBSTR (skh.bestandsnaam(+), 1, 6)
              AND d.ct_days = SUBSTR (cth.bestandsnaam(+), 1, 8)
              AND d.sb_days = SUBSTR (sbh.bestandsnaam(+), 1, 8)
   ORDER BY   d.sk_days desc 

;
