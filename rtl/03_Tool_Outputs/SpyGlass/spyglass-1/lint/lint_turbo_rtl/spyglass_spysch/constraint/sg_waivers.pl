################################################################################
#This is an internally genertaed by spyglass to populate Waiver Info for Reports
#Note:Spyglass does not support any perl routine like "spyDecompileWaiverInfo"
#     The routine is purely for internal usage of spyglass
################################################################################


use SpyGlass;

spyClearWaiverHashInPerl(0);

spyComputeWaivedViolCount("totalWaivedViolationCount"=>'12',
                          "totalGeneratedCount"=>'17',
                          "totalReportCount"=>'5'
                         );

spyComputeViolCountForTurbo("totalGeneratedCount"=>'77',
                          "totalGeneratedSecCount"=>'2',
                          "totalWaivedPrimaryMsgCount"=>'10',
                          "totalWaivedSecMsgCount"=>'2',
                         );

spyDecompileWaiverInfo("waive_cmd_id"=>'1',
                       "waiverCmd"=>'q%waive  -exact  -du "CLK_GATE" -rule "InferLatch" -msg "Latch inferred for signal \'enable_latch\' in module \'CLK_GATE\'" -comment "Created by ICer on 04-Oct-2026 00:55:24"%',
                       "-du"=>'"CLK_GATE"',
                       "-rule"=>'"InferLatch"',
                       "-exact"=>'1',
                       "-msg"=>'q%Latch inferred for signal \'enable_latch\' in module \'CLK_GATE\'%',
                       "-comment"=>'"Created by ICer on 04-Oct-2026 00:55:24"',
                       "violations_waived"=>'18',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"/mnt/hgfs/Shared_Folder/RTL_System_Project/waiver.awl"',
                       "waiverline"=>'3'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'2',
                       "waiverCmd"=>'q%waive  -exact  -rule "STARC05-1.4.3.4" -comment "Created by ICer on 04-Oct-2026 01:09:42  -DIV_CLK is intentionally used as a generated clock output."%',
                       "-rule"=>'q%STARC05-1.4.3.4%',
                       "-exact"=>'1',
                       "-comment"=>'"Created by ICer on 04-Oct-2026 01:09:42  -DIV_CLK is intentionally used as a generated clock output."',
                       "violations_waived"=>'19 20 21',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"/mnt/hgfs/Shared_Folder/RTL_System_Project/waiver.awl"',
                       "waiverline"=>'4'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'3',
                       "waiverCmd"=>'q%waive  -rule "ReportIgnoredOverlappingRules" -comment "Created by ICer on 04-Oct-2026 02:50:21"%',
                       "-rule"=>'"ReportIgnoredOverlappingRules"',
                       "-comment"=>'"Created by ICer on 04-Oct-2026 02:50:21"',
                       "violations_waived"=>'1 2 3 4 5 6 7 8',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"/mnt/hgfs/Shared_Folder/RTL_System_Project/waiver.awl"',
                       "waiverline"=>'5'
                      );

spyWaiversDataCount("totalWaivers"=>'3',
"totalWaiversApplied"=>'3',
"totalWaiversWithRegExp"=>'0',
"totalWaiversWithRuleSpecified"=>'3',
"totalWaiversWithIpSpecified"=>'0',
"totalWaiversWithFileLine"=>'0',
                         );

spyProhibitWaiverRules(                         );

spySetWaivedViolationNumberHash("");

1;
