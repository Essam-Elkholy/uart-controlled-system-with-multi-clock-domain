################################################################################
#This is an internally genertaed by SpyGlass for Message Tagging Support
################################################################################


use spyglass;
use SpyGlass;
use SpyGlass::Objects;
spyRebootMsgTagSupport();

spySetMsgTagCount(61,39);
spyCacheTagValuesFromBatch(["AC_COHERENCY06_SS_SCH"]);
spyCacheTagValuesFromBatch(["AC_CONV_SS_SCH"]);
spyCacheTagValuesFromBatch(["AC_GLITCH03_SS_SCH"]);
spyCacheTagValuesFromBatch(["ADV_CLK_CDC_ANALYSIS_SS"]);
spyCacheTagValuesFromBatch(["ADV_CLK_SYNC_RTL2NETLISTSTAT"]);
spyCacheTagValuesFromBatch(["ADV_CLK_SYNC_SS_SCH"]);
spyCacheTagValuesFromBatch(["CDC_ABSTRACT_VALIDATION_SS_SCH"]);
spyCacheTagValuesFromBatch(["Clock_conv01_WRN"]);
spyCacheTagValuesFromBatch(["QS_CSV_TAG"]);
spyCacheTagValuesFromBatch(["SETUP_BBOX01_SDC_TAG"]);
spyCacheTagValuesFromBatch(["SETUP_BBOX01_SS_SCH"]);
spyCacheTagValuesFromBatch(["SETUP_LIBRARY_SS_RTL"]);
spyCacheTagValuesFromBatch(["SETUP_LIBRARY_SS_SCH"]);
spyCacheTagValuesFromBatch(["SETUP_PORT_SDC_TAG"]);
spyCacheTagValuesFromBatch(["SETUP_PORT_SS_SCH"]);
spyCacheTagValuesFromBatch(["VIRT_CLK_MAP_SS_SCH"]);
spyParseTextMessageTagFile("./spyglass-1/cdc/cdc_verify_struct/spyglass_spysch/sg_msgtag.txt");

if(!defined $::spyInIspy || !$::spyInIspy)
{
    spyDefineReportGroupingOrder("ALL",
(
"BUILTIN"   => [SGTAGTRUE, SGTAGFALSE]
,"TEMPLATE" => "A"
)
);
}
spyMessageTagTestBenchmark(55,"./spyglass-1/cdc/cdc_verify_struct/spyglass.vdb");

1;
