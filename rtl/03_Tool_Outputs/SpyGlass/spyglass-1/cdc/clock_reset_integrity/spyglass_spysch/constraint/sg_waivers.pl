################################################################################
#This is an internally genertaed by spyglass to populate Waiver Info for Reports
#Note:Spyglass does not support any perl routine like "spyDecompileWaiverInfo"
#     The routine is purely for internal usage of spyglass
################################################################################


use SpyGlass;

spyClearWaiverHashInPerl(0);

spyComputeWaivedViolCount("totalWaivedViolationCount"=>'2',
                          "totalGeneratedCount"=>'13',
                          "totalReportCount"=>'11'
                         );

spyDecompileWaiverInfo("waive_cmd_id"=>'1',
                       "waiverCmd"=>'q%waive  -exact  -du "CLK_GATE" -rule "InferLatch" -msg "Latch inferred for signal \'enable_latch\' in module \'CLK_GATE\'" -comment "Created by ICer on 04-Oct-2026 00:55:24"%',
                       "-du"=>'"CLK_GATE"',
                       "-rule"=>'"InferLatch"',
                       "-exact"=>'1',
                       "-msg"=>'q%Latch inferred for signal \'enable_latch\' in module \'CLK_GATE\'%',
                       "-comment"=>'"Created by ICer on 04-Oct-2026 00:55:24"',
                       "violations_waived"=>'',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"/mnt/hgfs/Shared_Folder/RTL_System_Project/waiver.awl"',
                       "waiverline"=>'6'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'2',
                       "waiverCmd"=>'q%waive  -exact  -rule "STARC05-1.4.3.4" -comment "Created by ICer on 04-Oct-2026 01:09:42  -DIV_CLK is intentionally used as a generated clock output."%',
                       "-rule"=>'q%STARC05-1.4.3.4%',
                       "-exact"=>'1',
                       "-comment"=>'"Created by ICer on 04-Oct-2026 01:09:42  -DIV_CLK is intentionally used as a generated clock output."',
                       "violations_waived"=>'',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"/mnt/hgfs/Shared_Folder/RTL_System_Project/waiver.awl"',
                       "waiverline"=>'7'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'3',
                       "waiverCmd"=>'q%waive  -exact  -du "CLK_GATE" -rule "InferLatch" -msg "Latch inferred for signal \'enable_latch\' in module \'CLK_GATE\'" -comment "Created by ICer on 04-Oct-2026 00:55:24"%',
                       "-du"=>'"CLK_GATE"',
                       "-rule"=>'"InferLatch"',
                       "-exact"=>'1',
                       "-msg"=>'q%Latch inferred for signal \'enable_latch\' in module \'CLK_GATE\'%',
                       "-comment"=>'"Created by ICer on 04-Oct-2026 00:55:24"',
                       "violations_waived"=>'',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"/mnt/hgfs/Shared_Folder/RTL_System_Project/waiver.awl"',
                       "waiverline"=>'8'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'4',
                       "waiverCmd"=>'q%waive  -exact  -rule "STARC05-1.4.3.4" -comment "Created by ICer on 04-Oct-2026 01:09:42  -DIV_CLK is intentionally used as a generated clock output."%',
                       "-rule"=>'q%STARC05-1.4.3.4%',
                       "-exact"=>'1',
                       "-comment"=>'"Created by ICer on 04-Oct-2026 01:09:42  -DIV_CLK is intentionally used as a generated clock output."',
                       "violations_waived"=>'',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"/mnt/hgfs/Shared_Folder/RTL_System_Project/waiver.awl"',
                       "waiverline"=>'9'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'5',
                       "waiverCmd"=>'q%waive  -exact  -rule "ReportIgnoredOverlappingRules" -comment "Created by ICer on 04-Oct-2026 02:50:21"%',
                       "-rule"=>'"ReportIgnoredOverlappingRules"',
                       "-exact"=>'1',
                       "-comment"=>'"Created by ICer on 04-Oct-2026 02:50:21"',
                       "violations_waived"=>'',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"/mnt/hgfs/Shared_Folder/RTL_System_Project/waiver.awl"',
                       "waiverline"=>'10'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'6',
                       "waiverCmd"=>'q%waive  -rule "Clock_glitch04" -comment "Created by ICer on 04-Oct-2026 03:01:09"%',
                       "-rule"=>'"Clock_glitch04"',
                       "-comment"=>'"Created by ICer on 04-Oct-2026 03:01:09"',
                       "violations_waived"=>'11 12',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"/mnt/hgfs/Shared_Folder/RTL_System_Project/waiver.awl"',
                       "waiverline"=>'11'
                      );

spyWaiversDataCount("totalWaivers"=>'6',
"totalWaiversApplied"=>'6',
"totalWaiversWithRegExp"=>'0',
"totalWaiversWithRuleSpecified"=>'6',
"totalWaiversWithIpSpecified"=>'0',
"totalWaiversWithFileLine"=>'0',
                         );

spyProhibitWaiverRules(                         );

spySetWaivedViolationNumberHash("");

1;
