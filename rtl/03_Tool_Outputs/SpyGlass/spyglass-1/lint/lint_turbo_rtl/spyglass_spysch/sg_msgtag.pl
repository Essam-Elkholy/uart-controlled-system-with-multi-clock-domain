################################################################################
#This is an internally genertaed by SpyGlass for Message Tagging Support
################################################################################


use spyglass;
use SpyGlass;
use SpyGlass::Objects;
spyRebootMsgTagSupport();

spySetMsgTagCount(111,34);
spyCacheTagValuesFromBatch(["AV_INITSTATE01_SS_SCH"]);
spyCacheTagValuesFromBatch(["AV_INITSTATE01_SS_SCH01"]);
spyCacheTagValuesFromBatch(["STARC-1.4.3.4_VIOLATION_CSV_TAG"]);
spyParseTextMessageTagFile("./spyglass-1/lint/lint_turbo_rtl/spyglass_spysch/sg_msgtag.txt");

if(!defined $::spyInIspy || !$::spyInIspy)
{
    spyDefineReportGroupingOrder("ALL",
(
"BUILTIN"   => [SGTAGTRUE, SGTAGFALSE]
,"TEMPLATE" => "A"
)
);
}
spyMessageTagTestBenchmark(78,"./spyglass-1/lint/lint_turbo_rtl/spyglass.vdb");

1;
