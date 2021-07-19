package §#!'§
{
   import §1!i§.§>!%§;
   import flash.utils.getTimer;
   
   public class §6"]§ extends §>!%§
   {
      
      private static const §=!+§:Boolean;
      
      private static const §-#]§:String = "powerup-used";
      
      private static const §-#T§:String = "level-powerup-used";
      
      private static const §4"A§:String;
      
      private static const § !§:String;
      
      private static const §2"I§:String = "powerup-gained";
      
      private static const §",§:String = "framerate";
      
      private static const §4!E§:String = "external-pause";
      
      private static const §7#!§:String = "gift";
      
      private static const §3#?§:String = "shop";
      
      private static const §0#O§:String = "brag";
      
      private static const §?n§:String = "invite";
      
      private static const §?"w§:String = "challenge";
      
      private static const §4!d§:String = "ab-test";
      
      private static const §3"+§:String = "walet-snapshot";
      
      private static const §]"N§:String = "send-request-popups";
      
      private static const §8!T§:String = "popup-opened";
      
      private static const §6"Y§:String = "skip-button";
      
      private static const §7"W§:String = "warning";
      
      private static const §4!6§:String = "user-statistics";
      
      private static const §1!t§:String = "error";
      
      private static const §8"_§:String = "paused";
      
      private static const §#"3§:String = "resumed";
      
      private static const §="&§:String = "gift-claimed";
      
      private static const §@!n§:String = "campaign-gift-claimed";
      
      private static const §6"R§:String = "opened";
      
      private static const §=!2§:String = "product-buy-selected";
      
      private static const §5!g§:String = "product-buy-completed";
      
      private static const §,a§:String = "subscription-buy-selected";
      
      private static const §0"?§:String = "subscription-buy-completed";
      
      private static const §["=§:String = "coin-buy-selected";
      
      private static const §0"H§:String = "coin-buy-completed";
      
      private static const §["!§:String = "brag-shown";
      
      private static const §,"4§:String = "brag-clicked";
      
      private static const §@"M§:String = "friend-clicked";
      
      private static const §1">§:String = "generic-clicked";
      
      private static const §]b§:String = "challenge-clicked";
      
      private static const §8#+§:String = "upsell-clicked";
      
      private static const §]#C§:String = "upsell-open-purchase";
      
      private static const §+"%§:String = "upsell-buy";
      
      private static const §>!S§:String = "-normal";
      
      private static const §8"c§:String = "-a";
      
      private static const §%#?§:String = "-b";
      
      private static const ACTION_GPU_FPS_FULL_SCREEN_REPORT:String;
      
      private static const ACTION_CPU_FPS_FULL_SCREEN_REPORT:String;
      
      private static const §4h§:String = "invalid-currency";
      
      private static const §^#J§:String = "download-failed";
      
      private static const §,#8§:String = "3rd-party-cookies-missing";
      
      private static const §]!a§:String = "invalid-level";
      
      private static const §'"_§:String = "flash-var-missing";
      
      private static const §#!!§:String = "friend-count";
      
      private static const §8#[§:String = "start";
      
      private static const §-S§:String = "complete";
      
      private static const §#>§:String = "error";
      
      private static const §0#=§:String = "open";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array;
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array;
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      public static const §2"#§:String = "DailyReward";
      
      public static const §'"X§:String = "PaidSpin";
      
      public static const §3!b§:String = "LevelComplete";
      
      public static const §4!2§:String = "starcoins";
      
      public static const §6"W§:String = "crystals";
      
      public static const §5"^§:String = "mighty-falcons";
      
      public static const §8##§:String = "clone-birds";
      
      public static const §;b§:String = "thermal-detonator";
      
      public static const §-#E§:String = "laser-droid";
      
      public static const §#"z§:String = "saber-slingshot";
      
      public static const §""x§:String = "send-free-crystals";
      
      public static const §^S§:String = "invite-friends";
      
      public static const §]_§:String = "request-for-crystals";
      
      public static const §@!Y§:String = "challenge-your-friends";
      
      public static const §-"O§:String = "get-bigger-rewards";
      
      public static const §@!O§:String = "help-your-friends";
      
      public static const §4!§:String = "free-clone-birds";
      
      public static const SKIP_EXTRA_BIRD:String = "skip-extra-bird";
      
      public static const §<8§:String = "skip-to-extra-bird";
      
      public static const §'v§:String = "skip-to-victory";
      
      public static const § "i§:String = "skip-to-failure";
      
      public static const §8!1§:String = "popup-tournament-history";
      
      private static var § l§:Array;
      
      private static var §8u§:int = 0;
      
      private static var §3#W§:int = 0;
      
      private static var §%#E§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §=!+§ = §4#;§.§<N§;
            while(true)
            {
               §-#]§ = "powerup-used";
               while(true)
               {
                  §-#T§ = "level-powerup-used";
                  loop2:
                  while(true)
                  {
                     §4"A§ = "powerup-" + §""+§;
                     loop3:
                     while(true)
                     {
                        § !§ = §""+§ + "-powerup";
                        while(true)
                        {
                           §2"I§ = "powerup-gained";
                           loop5:
                           while(true)
                           {
                              §",§ = "framerate";
                              while(true)
                              {
                                 §4!E§ = "external-pause";
                                 while(true)
                                 {
                                    §7#!§ = "gift";
                                    loop8:
                                    while(true)
                                    {
                                       §3#?§ = "shop";
                                       while(true)
                                       {
                                          §0#O§ = "brag";
                                          loop10:
                                          while(_loc2_)
                                          {
                                             §?n§ = "invite";
                                             while(true)
                                             {
                                                §?"w§ = "challenge";
                                                while(true)
                                                {
                                                   §4!d§ = "ab-test";
                                                   while(true)
                                                   {
                                                      §3"+§ = "walet-snapshot";
                                                      while(true)
                                                      {
                                                         §]"N§ = "send-request-popups";
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §8!T§ = "popup-opened";
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §6"Y§ = "skip-button";
                                                               while(true)
                                                               {
                                                                  §7"W§ = "warning";
                                                                  while(true)
                                                                  {
                                                                     §4!6§ = "user-statistics";
                                                                     while(true)
                                                                     {
                                                                        §1!t§ = "error";
                                                                        while(_loc2_)
                                                                        {
                                                                           continue loop16;
                                                                           while(!(_loc1_ && §6"]§))
                                                                           {
                                                                              §@"M§ = "friend-clicked";
                                                                              loop34:
                                                                              while(true)
                                                                              {
                                                                                 §1">§ = "generic-clicked";
                                                                                 while(true)
                                                                                 {
                                                                                    §]b§ = "challenge-clicked";
                                                                                    loop36:
                                                                                    while(true)
                                                                                    {
                                                                                       §8#+§ = "upsell-clicked";
                                                                                       while(true)
                                                                                       {
                                                                                          §]#C§ = "upsell-open-purchase";
                                                                                          addr625:
                                                                                          while(_loc2_)
                                                                                          {
                                                                                             continue loop5;
                                                                                          }
                                                                                          addr512:
                                                                                          continue loop34;
                                                                                          if(!(_loc2_ || _loc1_))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §-S§ = "complete";
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                if(_loc1_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(!_loc1_)
                                                                                                {
                                                                                                   §#>§ = "error";
                                                                                                   while(_loc2_)
                                                                                                   {
                                                                                                      §0#=§ = "open";
                                                                                                      loop54:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         SAMPLE_1_PERCENT_FLASH_ACTIONS = [§,6§,§""+§];
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               continue loop54;
                                                                                                            }
                                                                                                            if(_loc1_ && _loc1_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               SAMPLE_100_PERCENT_FLASH_ACTIONS = [ACTION_APPLICATION_CRASH,§!!W§,§?#T§];
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  SAMPLE_1_PERCENT_CATEGORIES = [§-#]§,§-#T§,§4"A§,§ !§,§",§,§4!E§,§7#!§,§3#?§,§0#O§,§?n§,§2"I§,§3"+§,§]"N§,§8!T§,§6"Y§];
                                                                                                                  while(!_loc1_)
                                                                                                                  {
                                                                                                                     addr446:
                                                                                                                     if(_loc2_ || _loc1_)
                                                                                                                     {
                                                                                                                        SAMPLE_100_PERCENT_CATEGORIES = [§1!t§];
                                                                                                                        loop59:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           FULL_SCREEN = "-full-screen";
                                                                                                                           addr406:
                                                                                                                           while(!_loc1_)
                                                                                                                           {
                                                                                                                              §2"#§ = "DailyReward";
                                                                                                                              continue loop59;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §>!S§ = "-normal";
                                                                                                                           §§goto(addr615);
                                                                                                                           §§goto(addr446);
                                                                                                                        }
                                                                                                                        addr620:
                                                                                                                     }
                                                                                                                     §§goto(addr608);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr505:
                                                                                                         while(_loc2_ || §6"]§)
                                                                                                         {
                                                                                                            §§goto(addr512);
                                                                                                            §§goto(addr470);
                                                                                                         }
                                                                                                         §§goto(addr589);
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop10;
                                                                                                }
                                                                                                continue loop3;
                                                                                             }
                                                                                             continue loop36;
                                                                                          }
                                                                                          while(_loc2_)
                                                                                          {
                                                                                             ACTION_GPU_FPS_FULL_SCREEN_REPORT = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
                                                                                             §§goto(addr596);
                                                                                          }
                                                                                          §§goto(addr671);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     if(_loc2_ || §6"]§)
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                  }
                                                                  if(_loc1_ && _loc1_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!_loc2_)
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  § "i§ = "skip-to-failure";
                                                                  §§goto(addr141);
                                                               }
                                                            }
                                                         }
                                                         if(_loc1_ && §6"]§)
                                                         {
                                                            continue;
                                                         }
                                                         §^S§ = "invite-friends";
                                                         §§goto(addr276);
                                                      }
                                                   }
                                                }
                                                while(_loc2_ || §6"]§)
                                                {
                                                   §0"H§ = "coin-buy-completed";
                                                   §§goto(addr678);
                                                }
                                             }
                                          }
                                          continue loop2;
                                       }
                                    }
                                    if(_loc1_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr81);
                                 }
                                 if(_loc1_ && §6"]§)
                                 {
                                    continue;
                                 }
                                 §@!Y§ = "challenge-your-friends";
                                 §§goto(addr229);
                              }
                           }
                           if(_loc1_ && _loc1_)
                           {
                              continue;
                           }
                           §8#[§ = "start";
                           §§goto(addr505);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr477);
      }
      
      public function §6"]§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §-!&§(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §2!L§(§>!%§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
         }
      }
      
      public static function §2!L§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§!>§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS));
         if(_loc5_ || param1)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         if(!_loc6_)
         {
            §>#V§(_loc4_,§'"r§,param1,param2,param3);
         }
      }
      
      public static function §?!h§(param1:String, param2:String, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(param3)
            {
               if(_loc5_)
               {
                  param1 += "_subscription";
               }
               while(true)
               {
                  §§goto(addr65);
               }
            }
            addr65:
            §§goto(addr64);
         }
         addr64:
         while(true)
         {
            §§push(§§findproperty(§<!O§));
            §§push(§-#]§);
            §§push(param1);
            §§push(param2);
            §§push(0);
            §§push(param3);
            if(!(_loc4_ && §6"]§))
            {
               §§push(!§§pop());
            }
            §§pop().§<!O§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
            do
            {
               §§push(§§findproperty(§<!O§));
               §§push(§-#T§);
               §§push(param2);
               §§push(param1);
               §§push(0);
               §§push(param3);
               if(_loc5_ || param2)
               {
                  §§push(!§§pop());
               }
               §§pop().§<!O§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
            }
            while(!(_loc5_ || param2));
            
            if(_loc5_ || §6"]§)
            {
               break;
            }
            continue loop0;
         }
      }
      
      public static function §4!9§(param1:String, param2:String, param3:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            §§push(§§findproperty(§<!O§));
            §§push(§2"I§);
            §§push(param1);
            §§push(param2 + "-");
            if(_loc5_)
            {
               §§push(param3);
               if(_loc5_)
               {
                  addr56:
                  §§push(§§pop() + §§pop());
                  §§push(param3);
               }
               §§pop().§<!O§(§§pop(),§§pop(),§§pop(),§§pop());
               §§goto(addr58);
            }
            §§goto(addr56);
         }
         addr58:
      }
      
      public static function §@!f§(param1:Array, param2:String, param3:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         if(_loc5_)
         {
            if(enabled)
            {
               loop0:
               while(true)
               {
                  §§push(§>#&§(param1));
                  if(!_loc6_)
                  {
                     §§push(§§pop());
                     if(_loc5_ || §6"]§)
                     {
                        §§push(_loc4_ = §§pop());
                     }
                  }
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        §<!O§(§4"A§,_loc4_,param2,param3);
                        addr84:
                        while(true)
                        {
                           §<!O§(§ !§,param2,_loc4_,param3);
                           if(_loc5_)
                           {
                              if(_loc5_)
                              {
                                 if(_loc5_)
                                 {
                                    break loop0;
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
                  break;
               }
            }
            return;
         }
         §§goto(addr84);
      }
      
      public static function §'5§(param1:String, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §<!O§(§3"+§,param1,"",param2);
         }
      }
      
      public static function §8#2§(param1:String, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || §6"]§)
         {
            §<!O§(§]"N§,param1,"",param2);
         }
      }
      
      public static function §]C§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §<!O§(§6"Y§,param1,"",0);
         }
      }
      
      public static function §2![§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §<!O§(§8!T§,param1,"",0);
         }
      }
      
      public static function §]F§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:* = null;
         if(!_loc8_)
         {
            §§push(§ l§);
            if(_loc7_ || param3)
            {
               if(§§pop().indexOf(param2) >= 0)
               {
                  if(!_loc8_)
                  {
                     return;
                  }
                  addr36:
                  §§push(§ l§);
               }
               §§goto(addr36);
            }
            var _loc5_:* = §§pop().length == 0;
            if(_loc7_)
            {
               § l§.push(param2);
               loop0:
               while(true)
               {
                  §§push(param3);
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!_loc8_)
                        {
                           §§push(§>!%§.ACTION_CPU_FPS_REPORT);
                           loop2:
                           while(true)
                           {
                              _loc6_ = §§pop();
                              addr154:
                              while(true)
                              {
                                 if(_loc8_ && param1)
                                 {
                                    continue loop2;
                                 }
                                 addr161:
                                 _loc6_ = §§pop();
                                 while(true)
                                 {
                                    §§push(param4);
                                    continue loop1;
                                    §§goto(addr161);
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(param4);
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 continue loop0;
                              }
                              addr148:
                              while(true)
                              {
                                 addr60:
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    if(!(_loc8_ && param3))
                                    {
                                       continue loop4;
                                    }
                                    continue loop1;
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                     else
                     {
                        §§push(§>!%§.ACTION_GPU_FPS_REPORT);
                     }
                     §§goto(addr154);
                  }
               }
            }
            §§goto(addr118);
         }
         §§goto(addr36);
      }
      
      public static function §>u§(param1:String, param2:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || _loc3_)
         {
            var _loc3_:*;
            §§push((_loc3_ = §§findproperty(§8u§)).§8u§);
            if(!_loc5_)
            {
               §§push(§§pop() + 1);
            }
            var _loc4_:* = §§pop();
            if(_loc6_ || _loc3_)
            {
               _loc3_.§8u§ = _loc4_;
            }
            if(!(_loc5_ && _loc3_))
            {
               addr71:
               §<!O§(§7#!§,§="&§,param1,param2);
            }
            return;
         }
         §§goto(addr71);
      }
      
      public static function §`"&§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §<!O§(§7#!§,§@!n§,null,0);
         }
      }
      
      public static function §]!y§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            var _loc1_:*;
            §§push((_loc1_ = §§findproperty(§3#W§)).§3#W§);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() + 1);
            }
            var _loc2_:* = §§pop();
            if(!(_loc4_ && _loc1_))
            {
               _loc1_.§3#W§ = _loc2_;
            }
            if(_loc3_)
            {
               §%#E§ = §5!W§();
            }
         }
         do
         {
            §<!O§(§4!E§,§8"_§,§3#W§.toString(),§%#E§);
         }
         while(_loc4_ && §6"]§);
         
      }
      
      public static function §<!;§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §<!O§(§4!E§,§#"3§,"",§5!W§(§%#E§));
         }
      }
      
      public static function §>!=§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!§=!+§)
            {
               if(!_loc1_)
               {
                  §<!O§(§3#?§,§6"R§,null,0);
               }
            }
         }
      }
      
      public static function §9!d§(param1:String, param2:int, param3:int, param4:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = null;
         if(_loc6_ || param2)
         {
            §§push(§=!+§);
            loop0:
            while(!§§pop())
            {
               addr120:
               loop6:
               while(true)
               {
                  §§push(param4);
                  if(!(_loc6_ || param1))
                  {
                     continue loop0;
                  }
                  if(§§pop())
                  {
                     if(!_loc7_)
                     {
                        §§push(_loc5_);
                        if(!_loc7_)
                        {
                           if(!(_loc7_ && param3))
                           {
                              §§push(§§pop() + "_subscription");
                              if(!(_loc7_ && param2))
                              {
                                 if(_loc6_ || param2)
                                 {
                                    _loc5_ = §§pop();
                                    loop7:
                                    while(_loc6_ || param3)
                                    {
                                       while(true)
                                       {
                                          §<!O§(§3#?§,§=!2§,_loc5_,param3,false);
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                          continue loop7;
                                       }
                                       if(_loc6_)
                                       {
                                          break loop0;
                                       }
                                       continue loop6;
                                    }
                                    while(true)
                                    {
                                       §§push(param1);
                                       addr114:
                                       while(true)
                                       {
                                          §§push(§§pop() + "-");
                                       }
                                    }
                                    addr93:
                                    addr113:
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop() + param2);
                                 }
                              }
                              while(true)
                              {
                                 §§push(§§pop());
                                 break loop6;
                              }
                           }
                           §§goto(addr114);
                        }
                        break;
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr31);
               }
               while(true)
               {
                  _loc5_ = §§pop();
                  §§goto(addr120);
               }
            }
            return;
         }
         §§goto(addr113);
      }
      
      public static function §>Q§(param1:String, param2:int, param3:int, param4:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = null;
         if(!_loc6_)
         {
            §§push(§=!+§);
            loop0:
            while(!§§pop())
            {
               addr106:
               loop4:
               while(true)
               {
                  §§push(param4);
                  if(_loc6_)
                  {
                     continue loop0;
                  }
                  if(§§pop())
                  {
                     if(_loc7_ || param1)
                     {
                        §§push(_loc5_);
                        if(!(_loc6_ && §6"]§))
                        {
                           §§push(§§pop() + "_subscription");
                           if(_loc7_)
                           {
                              _loc5_ = §§pop();
                              loop5:
                              while(true)
                              {
                                 addr27:
                                 while(true)
                                 {
                                    §<!O§(§3#?§,§5!g§,_loc5_,param3,false);
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    continue loop5;
                                 }
                                 if(!_loc7_)
                                 {
                                    continue loop4;
                                 }
                                 if(!_loc6_)
                                 {
                                    break loop0;
                                 }
                                 addr80:
                                 while(true)
                                 {
                                    §§push(param1);
                                    if(_loc7_)
                                    {
                                       §§push(§§pop() + "-");
                                       if(_loc7_ || §6"]§)
                                       {
                                          §§push(§§pop() + param2);
                                       }
                                    }
                                    break loop4;
                                 }
                              }
                              addr77:
                           }
                           while(true)
                           {
                              §§push(§§pop());
                              break loop4;
                           }
                        }
                        break;
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr27);
               }
               while(true)
               {
                  _loc5_ = §§pop();
                  §§goto(addr106);
               }
            }
            return;
         }
         §§goto(addr80);
      }
      
      public static function § "§(param1:String, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(!§=!+§)
            {
               if(_loc5_ || param3)
               {
                  §§push(§§findproperty(§<!O§));
                  §§push(§3#?§);
                  §§push(§,a§);
                  §§push(param1 + "-");
                  if(!_loc4_)
                  {
                     §§push(param2);
                     if(!_loc4_)
                     {
                        addr60:
                        §§push(§§pop() + §§pop());
                        §§push(param3);
                     }
                     §§pop().§<!O§(§§pop(),§§pop(),§§pop(),§§pop(),false);
                     §§goto(addr63);
                  }
                  §§goto(addr60);
               }
            }
         }
         addr63:
      }
      
      public static function §#"c§(param1:String, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(!§=!+§)
            {
               if(_loc4_ || §6"]§)
               {
                  addr37:
                  §§push(§§findproperty(§<!O§));
                  §§push(§3#?§);
                  §§push(§0"?§);
                  §§push(param1 + "-");
                  if(_loc4_)
                  {
                     §§push(param2);
                     if(_loc4_)
                     {
                        addr59:
                        §§push(§§pop() + §§pop());
                        §§push(param3);
                     }
                     §§pop().§<!O§(§§pop(),§§pop(),§§pop(),§§pop(),false);
                     §§goto(addr62);
                  }
                  §§goto(addr59);
               }
            }
            addr62:
            return;
         }
         §§goto(addr37);
      }
      
      public static function §"#-§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(!§=!+§)
            {
               if(!_loc3_)
               {
                  addr47:
                  §<!O§(§4!d§,§8#+§,param1,0,false);
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      public static function §##7§(param1:String, param2:int = -1) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§]#C§);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            if(param2 != 0)
            {
               §§push(_loc3_);
               if(!_loc5_)
               {
                  if(!_loc5_)
                  {
                     §§push(§%#?§);
                     if(!(_loc5_ && param2))
                     {
                        addr80:
                        §§push(§§pop() + §§pop());
                        if(_loc4_)
                        {
                           _loc3_ = §§pop();
                           loop4:
                           while(true)
                           {
                              loop2:
                              for(; !§=!+§; continue loop4)
                              {
                                 if(_loc4_)
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop4;
                                    }
                                    while(true)
                                    {
                                       §<!O§(§4!d§,_loc3_,param1,0,false);
                                    }
                                 }
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       if(_loc4_)
                                       {
                                          break loop2;
                                       }
                                       addr97:
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          addr98:
                                          loop3:
                                          while(true)
                                          {
                                             §§push(§8"c§);
                                             addr99:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                addr101:
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                }
                                                continue loop3;
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       continue loop2;
                                    }
                                 }
                              }
                              return;
                           }
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr98);
               }
               §§goto(addr80);
            }
            §§goto(addr97);
         }
         §§goto(addr40);
      }
      
      public static function §@E§(param1:String, param2:int, param3:int = -1) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§+"%§);
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         if(!(_loc6_ && param1))
         {
            §§push(param3);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(§§pop() != §§pop())
               {
                  §§push(param3);
                  if(!_loc5_)
                  {
                     continue loop0;
                  }
                  §§push(1);
                  if(!_loc5_)
                  {
                     continue;
                  }
                  if(§§pop() != §§pop())
                  {
                     §§push(_loc4_);
                     if(!(_loc6_ && param2))
                     {
                        §§push(§>!S§);
                        if(!_loc6_)
                        {
                           addr88:
                           §§push(§§pop() + §§pop());
                           if(_loc5_)
                           {
                              if(!_loc6_)
                              {
                                 _loc4_ = §§pop();
                                 loop9:
                                 while(true)
                                 {
                                    loop7:
                                    for(; !§=!+§; continue loop9)
                                    {
                                       if(_loc5_)
                                       {
                                          if(_loc5_)
                                          {
                                             if(!(_loc6_ && param3))
                                             {
                                                §<!O§(§4!d§,_loc4_,param1,param2,false);
                                                addr54:
                                                if(!(_loc6_ && §6"]§))
                                                {
                                                   break;
                                                }
                                                continue loop9;
                                             }
                                             addr104:
                                             loop11:
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                if(_loc5_ || param3)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      addr114:
                                                      §§push(§%#?§);
                                                      while(true)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            addr119:
                                                            §§push(§§pop() + §§pop());
                                                            while(true)
                                                            {
                                                               _loc4_ = §§pop();
                                                               addr120:
                                                               while(true)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     if(!(_loc5_ || param1))
                                                                     {
                                                                        break loop1;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                  }
                                                                  addr148:
                                                                  while(true)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                               }
                                                               continue loop11;
                                                            }
                                                            addr119:
                                                         }
                                                         addr145:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            addr147:
                                                            while(true)
                                                            {
                                                               _loc4_ = §§pop();
                                                               §§goto(addr148);
                                                            }
                                                         }
                                                         §§goto(addr114);
                                                      }
                                                      addr115:
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr145);
                                                   }
                                                   addr144:
                                                }
                                                §§goto(addr119);
                                             }
                                          }
                                          §§goto(addr120);
                                       }
                                       §§goto(addr54);
                                    }
                                    return;
                                 }
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr104);
               }
               while(true)
               {
                  §§goto(addr144);
               }
            }
         }
         §§goto(addr129);
      }
      
      public static function §1"=§(param1:String, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(!§=!+§)
            {
               if(!(_loc4_ && §6"]§))
               {
                  addr38:
                  §§push(§§findproperty(§<!O§));
                  §§push(§3#?§);
                  §§push(§["=§);
                  §§push(param1 + "-");
                  if(_loc5_ || param1)
                  {
                     §§push(param2);
                     if(_loc5_ || §6"]§)
                     {
                        addr70:
                        §§push(§§pop() + §§pop());
                        §§push(param3);
                     }
                     §§pop().§<!O§(§§pop(),§§pop(),§§pop(),§§pop(),false);
                     §§goto(addr73);
                  }
                  §§goto(addr70);
               }
            }
            addr73:
            return;
         }
         §§goto(addr38);
      }
      
      public static function §%"B§(param1:String, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            if(!§=!+§)
            {
               if(!(_loc5_ && param2))
               {
                  addr42:
                  §§push(§§findproperty(§<!O§));
                  §§push(§3#?§);
                  §§push(§0"H§);
                  §§push(param1 + "-");
                  if(!(_loc5_ && param2))
                  {
                     §§push(param2);
                     if(_loc4_)
                     {
                        addr69:
                        §§push(§§pop() + §§pop());
                        §§push(param3);
                     }
                     §§pop().§<!O§(§§pop(),§§pop(),§§pop(),§§pop(),false);
                     §§goto(addr72);
                  }
                  §§goto(addr69);
               }
            }
            addr72:
            return;
         }
         §§goto(addr42);
      }
      
      public static function §'";§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §<!O§(§0#O§,§["!§,param1,0);
         }
      }
      
      public static function §#!9§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §<!O§(§0#O§,§,"4§,param1,0);
         }
      }
      
      public static function §8"<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §<!O§(§?n§,§@"M§,null,0);
         }
      }
      
      public static function §0"N§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §<!O§(§?"w§,§]b§,null,0);
         }
      }
      
      public static function §&"e§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §6"]§)
         {
            §<!O§(§?n§,§1">§,null,0);
         }
      }
      
      public static function § #7§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §<!O§(§7"W§,§4h§,param1,0);
         }
      }
      
      public static function §'7§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §<!O§(§7"W§,§^#J§,param1,0);
         }
      }
      
      public static function §%"X§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §<!O§(§7"W§,§,#8§,null,0);
         }
      }
      
      public static function §@#C§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            while(§§pop() != null)
            {
               §§push(param1);
               if(!_loc2_)
               {
                  if(§§pop().length == 0)
                  {
                     if(!(_loc3_ || _loc3_))
                     {
                        break;
                     }
                     param1 = "[empty]";
                  }
                  loop2:
                  while(true)
                  {
                     §<!O§(§7"W§,§]!a§,param1,0);
                     if(_loc3_ || _loc3_)
                     {
                        break;
                     }
                     addr83:
                     while(true)
                     {
                        continue loop2;
                     }
                  }
                  return;
               }
            }
         }
         param1 = "[null]";
         §§goto(addr83);
      }
      
      public static function §9"=§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §<!O§(§7"W§,§'"_§,param1,0);
         }
      }
      
      public static function §1w§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §<!O§(§4!6§,§#!!§,param1.toString(),param1);
         }
      }
      
      public static function §&"q§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §<!O§(§1!t§,param1,"",0,false);
         }
      }
      
      private static function §<!O§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:* = null;
         if(!_loc7_)
         {
            if(enabled)
            {
               loop0:
               while(true)
               {
                  §§push(§!"<§);
                  loop1:
                  while(true)
                  {
                     _loc6_ = §§pop();
                     do
                     {
                        if(param5)
                        {
                           if(_loc8_)
                           {
                              §§push(§!>§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES));
                              if(!(_loc7_ && param2))
                              {
                                 §§push(§§pop());
                              }
                              if(!(_loc7_ && param3))
                              {
                                 _loc6_ = §§pop();
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                        addr27:
                        while(true)
                        {
                           §>#V§(_loc6_,param1,param2,param3,param4);
                           if(_loc8_ || param1)
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                     while(!_loc8_);
                     
                  }
               }
            }
            return;
         }
         §§goto(addr98);
      }
      
      private static function §!>§(param1:String, param2:Array, param3:Array) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            §§push(param3);
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(§§pop().indexOf(§§pop()) < 0)
               {
                  while(true)
                  {
                     §§push(param2);
                     if(_loc5_)
                     {
                        §§push(param1);
                        if(!(_loc4_ && param2))
                        {
                           if(§§pop().indexOf(§§pop()) >= 0)
                           {
                              break;
                           }
                           if(_loc4_)
                           {
                              break;
                           }
                           addr78:
                           if(!_loc4_)
                           {
                              if(_loc5_ || §6"]§)
                              {
                                 return TRACKING_FUNCTION_10_PERCENT;
                              }
                              break loop1;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
                  return §!"<§;
               }
               return TRACKING_FUNCTION_1_PERCENT;
            }
         }
         §§goto(addr78);
      }
      
      private static function §>#&§(param1:Array) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = null;
         if(!(_loc8_ && _loc2_))
         {
            §§push(param1);
            if(_loc7_ || param1)
            {
               §§push(§§pop() == null);
               if(_loc7_ || _loc2_)
               {
                  if(!§§pop())
                  {
                     if(_loc7_ || _loc2_)
                     {
                        §§pop();
                        if(!_loc8_)
                        {
                           addr59:
                           if(param1.length == 0)
                           {
                              if(_loc7_)
                              {
                                 return null;
                              }
                           }
                        }
                        var _loc2_:* = "";
                        var _loc3_:Array = param1.concat();
                        if(!(_loc8_ && §6"]§))
                        {
                           _loc3_.sort();
                        }
                        var _loc5_:int = 0;
                        var _loc6_:* = _loc3_;
                        loop0:
                        while(§§hasnext(_loc6_,_loc5_))
                        {
                           §§push(§§nextvalue(_loc5_,_loc6_));
                           loop1:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              loop2:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(_loc8_)
                                    {
                                       break;
                                       addr156:
                                    }
                                    if(§§pop().length > 0)
                                    {
                                       if(_loc7_ || §6"]§)
                                       {
                                          addr150:
                                          §§push(_loc2_ + ("-" + _loc4_));
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc4_);
                                       if(_loc7_ || §6"]§)
                                       {
                                          if(_loc7_)
                                          {
                                             if(_loc7_ || _loc3_)
                                             {
                                                §§push(§§pop());
                                             }
                                             else
                                             {
                                                §§goto(addr150);
                                             }
                                          }
                                          break;
                                       }
                                       if(!_loc7_)
                                       {
                                          continue loop1;
                                       }
                                       _loc2_ = §§pop();
                                       if(_loc7_ || _loc2_)
                                       {
                                          if(!(_loc8_ && §6"]§))
                                          {
                                             if(false)
                                             {
                                                continue;
                                             }
                                             continue loop0;
                                          }
                                          continue loop2;
                                       }
                                    }
                                    continue loop0;
                                 }
                                 _loc2_ = §§pop();
                                 §§goto(addr156);
                              }
                           }
                        }
                        return _loc2_;
                     }
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      private static function §5!W§(param1:int = 0) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(getTimer() / 1000);
         if(_loc2_)
         {
            return §§pop() - param1;
         }
      }
   }
}
