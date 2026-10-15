################################################################################
#This is an internally genertaed by SpyGlass for Message Tagging Support
################################################################################


use spyglass;
use SpyGlass;
use SpyGlass::Objects;
spyRebootMsgTagSupport();

spySetMsgTagCount(19,34);
spyCacheTagValuesFromBatch(["AV_INITSTATE01_SS_SCH"]);
spyCacheTagValuesFromBatch(["AV_INITSTATE01_SS_SCH01"]);
spyParseTextMessageTagFile("./spyglass-1/lint/lint_functional_rtl/spyglass_spysch/sg_msgtag.txt");

if(!defined $::spyInIspy || !$::spyInIspy)
{
    spyDefineReportGroupingOrder("ALL",
(
"BUILTIN"   => [SGTAGTRUE, SGTAGFALSE]
,"TEMPLATE" => "A"
)
);
}
spyMessageTagTestBenchmark(61,"./spyglass-1/lint/lint_functional_rtl/spyglass.vdb");

1;
