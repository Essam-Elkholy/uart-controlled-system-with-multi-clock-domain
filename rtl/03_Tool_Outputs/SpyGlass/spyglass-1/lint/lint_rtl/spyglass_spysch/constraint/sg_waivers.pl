################################################################################
#This is an internally genertaed by spyglass to populate Waiver Info for Reports
#Note:Spyglass does not support any perl routine like "spyDecompileWaiverInfo"
#     The routine is purely for internal usage of spyglass
################################################################################


use SpyGlass;

spyClearWaiverHashInPerl(0);

spyComputeWaivedViolCount("totalWaivedViolationCount"=>'3',
                          "totalGeneratedCount"=>'0',
                          "totalReportCount"=>'0'
                         );

spyDecompileWaiverInfo("waive_cmd_id"=>'1',
                       "waiverCmd"=>'q%waive  -exact  -du "CLK_GATE" -rule "InferLatch" -msg "Latch inferred for signal \'enable_latch\' in module \'CLK_GATE\'" -comment "Created by ICer on 04-Oct-2026 00:55:24"%',
                       "-du"=>'"CLK_GATE"',
                       "-rule"=>'"InferLatch"',
                       "-exact"=>'1',
                       "-msg"=>'q%Latch inferred for signal \'enable_latch\' in module \'CLK_GATE\'%',
                       "-comment"=>'"Created by ICer on 04-Oct-2026 00:55:24"',
                       "violations_waived"=>'9',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"/mnt/hgfs/Shared_Folder/RTL_System_Project/waiver.awl"',
                       "waiverline"=>'1'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'2',
                       "waiverCmd"=>'q%waive  -exact  -rule "STARC05-1.4.3.4" -comment "Created by ICer on 04-Oct-2026 01:09:42  -DIV_CLK is intentionally used as a generated clock output."%',
                       "-rule"=>'q%STARC05-1.4.3.4%',
                       "-exact"=>'1',
                       "-comment"=>'"Created by ICer on 04-Oct-2026 01:09:42  -DIV_CLK is intentionally used as a generated clock output."',
                       "violations_waived"=>'10 11',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"/mnt/hgfs/Shared_Folder/RTL_System_Project/waiver.awl"',
                       "waiverline"=>'2'
                      );

spyWaiversDataCount("totalWaivers"=>'2',
"totalWaiversApplied"=>'2',
"totalWaiversWithRegExp"=>'0',
"totalWaiversWithRuleSpecified"=>'2',
"totalWaiversWithIpSpecified"=>'0',
"totalWaiversWithFileLine"=>'0',
                         );

spyProhibitWaiverRules(                         );

spySetWaivedViolationNumberHash("");

1;
