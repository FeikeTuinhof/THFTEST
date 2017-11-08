--------------------------------------------------------
--  DDL for View DIM_SALES_CHANNELS_G
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "PIMS"."DIM_SALES_CHANNELS_G" ("SALES_CHANNEL_CODE", "SALES_CHANNEL_DESC", "AGENTGROUP_CODE", "AGENTGROUP_DESCRIPTION") AS 
  select  a.sales_channel_code
,       a.sales_channel_desc 
,       nvl(b.AGENTGROUP_CODE,'Onb')               AGENTGROUP_CODE
,       nvl(b.AGENTGROUP_DESCRIPTION,'Onbekend' )  AGENTGROUP_DESCRIPTION
from ODS_SALES_CHANNELS  a
,    ODS_AGENT_GROUPS    b
where a.curr_id = 'Y' 
and   b.curr_id = 'Y' 
and   a.AGENTGROUP_CODE = b.AGENTGROUP_CODE(+) 

;
