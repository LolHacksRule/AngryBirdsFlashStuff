package §&!h§
{
   import §4!C§.§]!X§;
   import flash.net.URLLoader;
   import flash.utils.getTimer;
   
   public class §]V§ extends §"[§
   {
      
      private static const §@l§:Boolean;
      
      private static const §8!m§:String = "powerup-used";
      
      private static const §[4§:String = "level-powerup-used";
      
      private static const §<E§:String;
      
      private static const §`#§:String;
      
      private static const §#g§:String = "framerate";
      
      private static const §4#§:String = "external-pause";
      
      private static const §6!X§:String = "gift";
      
      private static const §-!'§:String = "shop";
      
      private static const §4P§:String = "brag";
      
      private static const §20§:String = "invite";
      
      private static const §2,§:String = "avatar";
      
      private static const §-X§:String = "warning";
      
      private static const §=!U§:String = "user-statistics";
      
      private static const §[,§:String = "error";
      
      private static const § !p§:String = "paused";
      
      private static const §!!N§:String = "resumed";
      
      private static const §7!p§:String = "gift-claimed";
      
      private static const §4H§:String = "campaign-gift-claimed";
      
      private static const §!1§:String = "opened";
      
      private static const §0!O§:String = "product-selected";
      
      private static const §[!p§:String = "product-buy-selected";
      
      private static const §67§:String = "product-buy-completed";
      
      private static const §-j§:String = "brag-shown";
      
      private static const §'K§:String = "brag-clicked";
      
      private static const §`!l§:String = "friend-clicked";
      
      private static const §=!D§:String = "generic-clicked";
      
      private static const §;x§:String = "opened";
      
      private static const §6!O§:String = "set";
      
      private static const § !3§:String = "product-set";
      
      private static const §8a§:String = "product-buy-selected";
      
      private static const §]#§:String = "product-buy-completed";
      
      private static const §[!O§:String = "share-clicked";
      
      private static const §^_§:String = "share-completed";
      
      private static const §#q§:String;
      
      private static const §<!F§:String;
      
      private static const §"j§:String = "download-failed";
      
      private static const §&o§:String = "3rd-party-cookies-missing";
      
      private static const §@N§:String = "invalid-level";
      
      private static const §<!R§:String = "flash-var-missing";
      
      private static const §'!r§:String = "friend-count";
      
      private static const §&5§:String = "advertisement-click";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array;
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array;
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §=!;§:Array;
      
      private static var §%@§:int = 0;
      
      private static var §<N§:int = 0;
      
      private static var §03§:int = 0;
      
      private static var §[B§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §@l§ = AngryBirdsFP11.§2!y§;
            while(true)
            {
               §8!m§ = "powerup-used";
               loop1:
               while(true)
               {
                  §[4§ = "level-powerup-used";
                  loop2:
                  while(true)
                  {
                     §§push(§§findproperty(§<E§));
                     §§push("powerup-");
                     if(!(_loc1_ && _loc1_))
                     {
                        §§push(§§pop() + §,!q§);
                     }
                     §§pop().§<E§ = §§pop();
                     while(true)
                     {
                        §`#§ = §,!q§ + "-powerup";
                        while(true)
                        {
                           §#g§ = "framerate";
                           loop5:
                           while(true)
                           {
                              §4#§ = "external-pause";
                              loop6:
                              while(true)
                              {
                                 §6!X§ = "gift";
                                 loop7:
                                 while(true)
                                 {
                                    §-!'§ = "shop";
                                    loop8:
                                    while(true)
                                    {
                                       §4P§ = "brag";
                                       loop9:
                                       while(true)
                                       {
                                          §20§ = "invite";
                                          loop10:
                                          while(true)
                                          {
                                             §2,§ = "avatar";
                                             continue loop6;
                                             addr401:
                                             if(_loc1_ && _loc1_)
                                             {
                                                continue;
                                             }
                                             §'K§ = "brag-clicked";
                                             loop24:
                                             while(true)
                                             {
                                                §`!l§ = "friend-clicked";
                                                loop25:
                                                while(!_loc1_)
                                                {
                                                   continue loop1;
                                                   loop34:
                                                   while(true)
                                                   {
                                                      if(!(_loc1_ && _loc2_))
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            §<!F§ = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
                                                            loop35:
                                                            while(true)
                                                            {
                                                               §"j§ = "download-failed";
                                                               loop36:
                                                               while(true)
                                                               {
                                                                  §&o§ = "3rd-party-cookies-missing";
                                                                  loop37:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc1_ && §]V§))
                                                                     {
                                                                        addr256:
                                                                        if(!(_loc2_ || §]V§))
                                                                        {
                                                                           break;
                                                                        }
                                                                        §@N§ = "invalid-level";
                                                                        while(_loc2_ || _loc2_)
                                                                        {
                                                                           §<!R§ = "flash-var-missing";
                                                                           loop39:
                                                                           while(_loc2_)
                                                                           {
                                                                              §'!r§ = "friend-count";
                                                                              loop40:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §&5§ = "advertisement-click";
                                                                                    loop41:
                                                                                    while(_loc2_)
                                                                                    {
                                                                                       addr209:
                                                                                       if(_loc2_ || _loc1_)
                                                                                       {
                                                                                          SAMPLE_1_PERCENT_FLASH_ACTIONS = [§%b§,§,!q§];
                                                                                          loop42:
                                                                                          for(; _loc2_; while(_loc2_ || _loc1_)
                                                                                          {
                                                                                             if(!_loc1_)
                                                                                             {
                                                                                                SAMPLE_100_PERCENT_CATEGORIES = [§[,§];
                                                                                                continue loop37;
                                                                                             }
                                                                                             addr437:
                                                                                             while(true)
                                                                                             {
                                                                                                §[!p§ = "product-buy-selected";
                                                                                                §§goto(addr432);
                                                                                             }
                                                                                          })
                                                                                          {
                                                                                             if(_loc1_)
                                                                                             {
                                                                                                continue loop35;
                                                                                             }
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                SAMPLE_100_PERCENT_FLASH_ACTIONS = [ACTION_APPLICATION_CRASH,§!!U§,§false§];
                                                                                                loop43:
                                                                                                while(_loc2_)
                                                                                                {
                                                                                                   if(!_loc1_)
                                                                                                   {
                                                                                                      SAMPLE_1_PERCENT_CATEGORIES = [§8!m§,§[4§,§<E§,§`#§,§#g§,§4#§,§6!X§,§-!'§,§4P§,§20§,§2,§];
                                                                                                      continue loop42;
                                                                                                   }
                                                                                                   addr342:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      § !3§ = "product-set";
                                                                                                      addr337:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §8a§ = §[!p§;
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc1_)
                                                                                                            {
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §]#§ = §67§;
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §67§ = "product-buy-completed";
                                                                                                                  continue loop7;
                                                                                                               }
                                                                                                               addr432:
                                                                                                            }
                                                                                                            addr88:
                                                                                                            if(!(_loc1_ && _loc2_))
                                                                                                            {
                                                                                                               if(!_loc1_)
                                                                                                               {
                                                                                                                  §<N§ = 0;
                                                                                                                  loop52:
                                                                                                                  while(_loc2_)
                                                                                                                  {
                                                                                                                     §03§ = 0;
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc2_)
                                                                                                                        {
                                                                                                                           addr60:
                                                                                                                           if(!(_loc2_ || _loc2_))
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           if(_loc2_)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           continue loop43;
                                                                                                                        }
                                                                                                                        addr114:
                                                                                                                        while(!_loc1_)
                                                                                                                        {
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              continue loop40;
                                                                                                                           }
                                                                                                                           §=!;§ = [];
                                                                                                                           while(_loc2_ || _loc1_)
                                                                                                                           {
                                                                                                                              §%@§ = 0;
                                                                                                                              break loop52;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              sSample10Percent = false;
                                                                                                                              continue loop36;
                                                                                                                              §§goto(addr102);
                                                                                                                           }
                                                                                                                           addr102:
                                                                                                                        }
                                                                                                                        continue loop42;
                                                                                                                     }
                                                                                                                     continue loop37;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc2_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§goto(addr88);
                                                                                                                     }
                                                                                                                     §§goto(addr102);
                                                                                                                  }
                                                                                                                  continue;
                                                                                                               }
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                         }
                                                                                                         addr488:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §=!U§ = "user-statistics";
                                                                                                            break loop40;
                                                                                                         }
                                                                                                         §§goto(addr209);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                continue loop41;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §[!O§ = "share-clicked";
                                                                                                addr318:
                                                                                                while(true)
                                                                                                {
                                                                                                   §^_§ = "share-completed";
                                                                                                   break loop39;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop39;
                                                                                       }
                                                                                       §§goto(addr337);
                                                                                    }
                                                                                    continue loop34;
                                                                                 }
                                                                                 addr347:
                                                                                 addr347:
                                                                                 while(_loc2_ || _loc1_)
                                                                                 {
                                                                                    §6!O§ = "set";
                                                                                 }
                                                                                 continue loop24;
                                                                                 §§goto(addr342);
                                                                              }
                                                                              continue loop9;
                                                                           }
                                                                           continue loop8;
                                                                           if(!(_loc1_ && _loc2_))
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 return;
                                                                                 addr53:
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           § !p§ = "paused";
                                                                           while(true)
                                                                           {
                                                                              §!!N§ = "resumed";
                                                                              addr457:
                                                                              while(!_loc1_)
                                                                              {
                                                                                 if(!_loc1_)
                                                                                 {
                                                                                    §7!p§ = "gift-claimed";
                                                                                    break loop34;
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                           }
                                                                           §§goto(addr237);
                                                                        }
                                                                        addr237:
                                                                     }
                                                                     addr447:
                                                                     while(true)
                                                                     {
                                                                        §!1§ = "opened";
                                                                        addr442:
                                                                        while(true)
                                                                        {
                                                                           §0!O§ = "product-selected";
                                                                           §§goto(addr437);
                                                                           addr366:
                                                                           if(_loc1_ && _loc2_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §;x§ = "opened";
                                                                           §§goto(addr347);
                                                                        }
                                                                        continue loop37;
                                                                     }
                                                                  }
                                                                  continue loop6;
                                                               }
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      continue loop25;
                                                   }
                                                   while(true)
                                                   {
                                                      §4H§ = "campaign-gift-claimed";
                                                      §§goto(addr447);
                                                   }
                                                }
                                                addr399:
                                                while(true)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      §§goto(addr401);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr457);
                                                   }
                                                }
                                                continue loop10;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           if(_loc1_ && _loc1_)
                           {
                              continue;
                           }
                           §-j§ = "brag-shown";
                           §§goto(addr399);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr134);
      }
      
      public function §]V§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §-h§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(Math.random() <= 0.1)
            {
               addr73:
               while(true)
               {
                  sSample10Percent = true;
                  addr76:
                  while(true)
                  {
                  }
               }
               addr73:
            }
            for(; Math.random() <= 0.01; §§goto(addr76))
            {
               if(_loc2_ || _loc2_)
               {
                  if(_loc1_)
                  {
                     continue;
                  }
                  sSample1Percent = true;
               }
               if(!_loc1_)
               {
                  break;
               }
               §§goto(addr73);
            }
            return;
         }
         §§goto(addr73);
      }
      
      public static function §+h§(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §8![§(§"[§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
         }
         var _loc3_:URLLoader = new URLLoader();
         if(!(_loc5_ && param1))
         {
            _loc3_.load(§]!X§.§#l§(AngryBirdsFP11.§6S§ + "/clienterror/" + param1));
         }
      }
      
      public static function §8![§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§7!Z§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS));
         if(_loc6_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         if(_loc6_)
         {
            §"[§.trackSampledEvent(_loc4_,§-!$§,param1,param2,param3);
         }
      }
      
      public static function §63§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§2!Z§());
         if(_loc5_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            §]1§(§8!m§,param1,param2,0);
            do
            {
               §]1§(§[4§,param2,param1,0);
            }
            while(!_loc5_);
            
         }
      }
      
      public static function §9!$§(param1:Array, param2:String, param3:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = null;
         if(_loc6_ || param2)
         {
            if(enabled)
            {
               if(_loc6_ || param3)
               {
                  §§push(§[F§(param1));
                  if(_loc6_)
                  {
                     §§push(§§pop());
                     if(_loc6_)
                     {
                        addr84:
                        §§push(_loc4_ = §§pop());
                     }
                     if(§§pop())
                     {
                        if(_loc6_)
                        {
                           addr89:
                           §]1§(§<E§,_loc4_,param2,param3);
                           do
                           {
                              §]1§(§`#§,param2,_loc4_,param3);
                           }
                           while(!(_loc6_ || param2));
                           
                           addr28:
                           return;
                           addr95:
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr28);
                  }
                  §§goto(addr84);
               }
            }
            §§goto(addr28);
         }
         §§goto(addr89);
      }
      
      public static function §6!Y§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:* = null;
         if(_loc7_ || §]V§)
         {
            §§push(§=!;§);
            if(_loc7_)
            {
               if(§§pop().indexOf(param2) >= 0)
               {
                  if(_loc7_ || param2)
                  {
                     §§goto(addr40);
                  }
               }
               §§push(§=!;§);
            }
            var _loc5_:* = §§pop().length == 0;
            if(!(_loc8_ && §]V§))
            {
               §=!;§.push(param2);
               loop0:
               while(true)
               {
                  §§push(param3);
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§push(§"[§.ACTION_GPU_FPS_REPORT);
                        while(true)
                        {
                           _loc6_ = §§pop();
                           addr149:
                           addr124:
                           while(true)
                           {
                              if(!(_loc8_ && param1))
                              {
                                 §§push(param4);
                                 continue loop1;
                              }
                           }
                           loop5:
                           while(true)
                           {
                              §§push(§]V§.§#q§);
                              if(!_loc8_)
                              {
                                 §§push(§§pop());
                              }
                              if(_loc8_)
                              {
                                 break;
                              }
                              if(_loc7_ || param3)
                              {
                                 if(!_loc8_)
                                 {
                                    _loc6_ = §§pop();
                                    while(true)
                                    {
                                       addr74:
                                       loop13:
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          if(!(_loc7_ || param1))
                                          {
                                             break;
                                          }
                                          if(!_loc8_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc7_)
                                                {
                                                   §8![§(_loc6_,param1.toString(),param1);
                                                }
                                                loop14:
                                                while(true)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   if(!(_loc8_ && param1))
                                                   {
                                                      while(true)
                                                      {
                                                         §]1§(§#g§,_loc6_,param2,param1);
                                                         if(_loc8_)
                                                         {
                                                            continue loop14;
                                                         }
                                                         if(!_loc7_)
                                                         {
                                                            continue loop13;
                                                         }
                                                         if(_loc7_)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               return;
                                                            }
                                                            addr181:
                                                            while(true)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  addr191:
                                                                  while(!_loc8_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(param4);
                                                                        addr169:
                                                                        while(!§§pop())
                                                                        {
                                                                        }
                                                                        addr170:
                                                                        while(true)
                                                                        {
                                                                           §§push(§]V§.§<!F§);
                                                                           addr172:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              break loop14;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop0;
                                                                  addr191:
                                                               }
                                                               while(true)
                                                               {
                                                                  continue loop13;
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr149);
                                                         }
                                                         §§goto(addr191);
                                                      }
                                                      addr58:
                                                   }
                                                   §§goto(addr170);
                                                }
                                                while(true)
                                                {
                                                   if(!(_loc8_ && §]V§))
                                                   {
                                                      _loc6_ = §§pop();
                                                      §§goto(addr181);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         _loc6_ = §§pop();
                                                      }
                                                      addr190:
                                                   }
                                                   §§goto(addr191);
                                                   §§goto(addr172);
                                                }
                                                addr173:
                                             }
                                             §§goto(addr58);
                                          }
                                          §§goto(addr169);
                                       }
                                       continue loop1;
                                    }
                                 }
                                 §§goto(addr172);
                              }
                              §§goto(addr173);
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr190);
                     }
                  }
               }
            }
            §§goto(addr193);
         }
         addr40:
      }
      
      public static function §54§(param1:String, param2:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            var _loc3_:*;
            §§push((_loc3_ = §§findproperty(§%@§)).§%@§);
            if(_loc5_ || §]V§)
            {
               §§push(§§pop() + 1);
            }
            var _loc4_:* = §§pop();
            if(!_loc6_)
            {
               _loc3_.§%@§ = _loc4_;
            }
            if(!(_loc6_ && param1))
            {
               addr65:
               §]1§(§6!X§,§7!p§,param1,param2);
            }
            return;
         }
         §§goto(addr65);
      }
      
      public static function §[P§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §]1§(§6!X§,§4H§,null,0);
         }
      }
      
      public static function §;!a§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            var _loc1_:*;
            §§push((_loc1_ = §§findproperty(§<N§)).§<N§);
            if(!_loc3_)
            {
               §§push(§§pop() + 1);
            }
            var _loc2_:* = §§pop();
            if(!_loc3_)
            {
               _loc1_.§<N§ = _loc2_;
            }
            if(_loc4_)
            {
               §03§ = §2!Z§();
               do
               {
                  §]1§(§4#§,§ !p§,§<N§.toString(),§03§);
               }
               while(!_loc4_);
               
               addr56:
            }
            return;
         }
         §§goto(addr56);
      }
      
      public static function §2'§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §]1§(§4#§,§!!N§,"",§2!Z§(§03§));
         }
      }
      
      public static function §8!T§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!§@l§)
            {
               if(_loc1_ || _loc1_)
               {
                  §]1§(§-!'§,§!1§,null,0);
               }
            }
         }
      }
      
      public static function §'!y§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!§@l§)
            {
               if(_loc2_ || param1)
               {
                  §]1§(§-!'§,§0!O§,param1,0);
               }
            }
         }
      }
      
      public static function § !Y§(param1:String, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            if(!§@l§)
            {
               if(_loc3_ || _loc3_)
               {
                  §]1§(§-!'§,§[!p§,param1,param2,false);
               }
            }
         }
      }
      
      public static function §1![§(param1:String, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!§@l§)
            {
               if(!_loc4_)
               {
                  §]1§(§-!'§,§67§,param1,param2,false);
               }
            }
         }
      }
      
      public static function §`N§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §]1§(§4P§,§-j§,param1,0);
         }
      }
      
      public static function §?!L§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §]1§(§4P§,§'K§,param1,0);
         }
      }
      
      public static function §6!r§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §]1§(§20§,§`!l§,null,0);
         }
      }
      
      public static function §;Q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §]1§(§20§,§=!D§,null,0);
         }
      }
      
      public static function §#!'§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §]1§(§2,§,§;x§,null,0);
         }
      }
      
      public static function §<c§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §]V§)
         {
            §]1§(§2,§,§6!O§,null,0);
         }
      }
      
      public static function §?!o§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §]1§(§2,§,§ !3§,param1,0);
         }
      }
      
      public static function §",§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §]1§(§2,§,§[!O§,null,0);
         }
      }
      
      public static function §<[§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §]1§(§2,§,§^_§,null,0);
         }
      }
      
      public static function §^!3§(param1:String, param2:int = 0) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(!§@l§)
            {
               if(!(_loc3_ && param1))
               {
                  addr38:
                  §]1§(§2,§,§8a§,param1,param2,false);
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      public static function §7`§(param1:String, param2:int = 0) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            if(!§@l§)
            {
               if(_loc3_ || _loc3_)
               {
                  addr42:
                  §]1§(§2,§,§]#§,param1,param2,false);
               }
            }
            return;
         }
         §§goto(addr42);
      }
      
      public static function §4!^§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §]1§(§-X§,§"j§,param1,0);
         }
      }
      
      public static function §9f§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §]1§(§-X§,§&o§,null,0);
         }
      }
      
      public static function §3^§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            while(§§pop() != null)
            {
               §§push(param1);
               if(_loc3_ || param1)
               {
                  if(§§pop().length == 0)
                  {
                     if(_loc3_ || §]V§)
                     {
                        if(!_loc2_)
                        {
                           if(!_loc3_)
                           {
                              break;
                           }
                           §§push("[empty]");
                           if(_loc3_ || §]V§)
                           {
                              param1 = §§pop();
                              addr93:
                              while(true)
                              {
                                 §§goto(addr24);
                              }
                              addr93:
                           }
                           else
                           {
                              addr98:
                              param1 = §§pop();
                           }
                           §§goto(addr24);
                        }
                        §§goto(addr24);
                     }
                     §§goto(addr93);
                  }
                  addr24:
                  while(true)
                  {
                     §]1§(§-X§,§@N§,param1,0);
                     if(_loc3_ || param1)
                     {
                        break;
                     }
                     continue loop2;
                  }
                  return;
               }
            }
            §§goto(addr98);
            §§push("[null]");
         }
         §§goto(addr93);
      }
      
      public static function §31§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §]1§(§-X§,§<!R§,param1,0);
         }
      }
      
      public static function §"!W§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §]1§(§=!U§,§'!r§,param1.toString(),param1);
         }
      }
      
      public static function § 4§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §]1§(§=!U§,§&5§,param1,0);
         }
      }
      
      public static function §&$§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || §]V§)
         {
            §]1§(§[,§,param1,"",0,false);
         }
      }
      
      private static function §]1§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:* = null;
         if(_loc8_)
         {
            if(enabled)
            {
               if(_loc8_)
               {
                  §§push(§]!H§);
                  loop0:
                  while(true)
                  {
                     _loc6_ = §§pop();
                     addr94:
                     while(true)
                     {
                        if(param5)
                        {
                           loop2:
                           for(; !(_loc7_ && param3); if(!(_loc7_ && param3))
                           {
                              addr54:
                              return;
                           })
                           {
                              §§push(§7!Z§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES));
                              if(_loc8_)
                              {
                                 if(!_loc8_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(§§pop());
                              }
                              _loc6_ = §§pop();
                              loop3:
                              while(true)
                              {
                                 addr27:
                                 addr23:
                                 while(true)
                                 {
                                    trackSampledEvent(_loc6_,param1,param2,param3,param4);
                                    if(_loc8_)
                                    {
                                       continue loop2;
                                    }
                                    continue loop3;
                                 }
                                 §§goto(addr54);
                              }
                           }
                           continue;
                        }
                        §§goto(addr27);
                     }
                  }
               }
               §§goto(addr94);
            }
            §§goto(addr23);
         }
         §§goto(addr94);
      }
      
      private static function §7!Z§(param1:String, param2:Array, param3:Array) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && §]V§))
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
                     if(!_loc5_)
                     {
                        §§push(param1);
                        if(_loc4_)
                        {
                           if(§§pop().indexOf(§§pop()) >= 0)
                           {
                              break;
                           }
                           if(!(_loc5_ && param2))
                           {
                              if(_loc4_)
                              {
                                 return TRACKING_FUNCTION_10_PERCENT;
                              }
                              break loop1;
                           }
                           if(_loc4_ || param2)
                           {
                              addr77:
                              break;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
                  return §]!H§;
               }
               return TRACKING_FUNCTION_1_PERCENT;
            }
         }
         §§goto(addr77);
      }
      
      private static function §[F§(param1:Array) : String
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = null;
         if(!(_loc7_ && §]V§))
         {
            §§push(param1);
            if(!(_loc7_ && §]V§))
            {
               §§push(§§pop() == null);
               if(!_loc7_)
               {
                  if(!§§pop())
                  {
                     if(!_loc7_)
                     {
                        §§pop();
                        if(!(_loc7_ && param1))
                        {
                           addr55:
                           if(param1.length == 0)
                           {
                              if(_loc8_)
                              {
                                 return null;
                              }
                           }
                        }
                        var _loc2_:* = "";
                        var _loc3_:Array = param1.concat();
                        if(!(_loc7_ && param1))
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
                                 loop3:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    while(true)
                                    {
                                       if(§§pop().length > 0)
                                       {
                                          break loop2;
                                       }
                                       §§push(_loc4_);
                                       if(!(_loc7_ && param1))
                                       {
                                          if(_loc8_)
                                          {
                                             if(_loc8_)
                                             {
                                                addr107:
                                                §§push(§§pop());
                                                if(!_loc7_)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      break loop3;
                                                   }
                                                   _loc2_ = §§pop();
                                                   if(_loc7_)
                                                   {
                                                      break;
                                                   }
                                                   if(!_loc8_)
                                                   {
                                                      addr136:
                                                      §§push(_loc2_);
                                                      §§push("-");
                                                      if(_loc8_ || _loc2_)
                                                      {
                                                         §§push(§§pop() + _loc4_);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr135:
                                                   }
                                                   if(!_loc8_)
                                                   {
                                                      continue loop2;
                                                      _loc2_ = §§pop() + §§pop();
                                                   }
                                                   if(true)
                                                   {
                                                      continue loop0;
                                                      break;
                                                   }
                                                   continue loop3;
                                                }
                                                continue;
                                             }
                                          }
                                          §§goto(addr136);
                                       }
                                       §§goto(addr107);
                                    }
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                              §§goto(addr135);
                           }
                        }
                        return _loc2_;
                     }
                  }
               }
            }
         }
         §§goto(addr55);
      }
      
      private static function §2!Z§(param1:int = 0) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(getTimer() / 1000);
         if(_loc3_)
         {
            return §§pop() - param1;
         }
      }
   }
}
