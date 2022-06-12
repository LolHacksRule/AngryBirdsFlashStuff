package §<a§
{
   import § "C§.§-!l§;
   import flash.net.URLLoader;
   import flash.utils.getTimer;
   
   public class §+!B§ extends §>f§
   {
      
      private static const §`!y§:Boolean;
      
      private static const §>""§:String = "powerup-used";
      
      private static const §=!`§:String = "level-powerup-used";
      
      private static const §#3§:String;
      
      private static const §2"%§:String;
      
      private static const §=!2§:String = "framerate";
      
      private static const §7"§:String = "external-pause";
      
      private static const §6"$§:String = "gift";
      
      private static const §?]§:String = "shop";
      
      private static const §3!,§:String = "brag";
      
      private static const §3%§:String = "invite";
      
      private static const §?g§:String = "avatar";
      
      private static const §7"#§:String = "halloween-shop";
      
      private static const §9w§:String = "warning";
      
      private static const §#"<§:String = "user-statistics";
      
      private static const §2!;§:String = "streaming";
      
      private static const §+o§:String = "external-url";
      
      private static const §`!t§:String = "error";
      
      private static const §-";§:String = "paused";
      
      private static const §%!_§:String = "resumed";
      
      private static const §+"!§:String = "gift-claimed";
      
      private static const §="D§:String = "campaign-gift-claimed";
      
      private static const §>!%§:String = "opened";
      
      private static const § !Y§:String = "product-selected";
      
      private static const §2!y§:String = "product-buy-selected";
      
      private static const §?B§:String = "product-buy-completed";
      
      private static const §4";§:String = "brag-shown";
      
      private static const §>U§:String = "brag-clicked";
      
      private static const §=!<§:String = "friend-clicked";
      
      private static const §`[§:String = "generic-clicked";
      
      private static const §>p§:String = "opened";
      
      private static const §8!r§:String = "set";
      
      private static const §26§:String = "product-set";
      
      private static const §"!I§:String = "product-buy-selected";
      
      private static const §@W§:String = "product-buy-completed";
      
      private static const §!!x§:String = "share-clicked";
      
      private static const §<" §:String = "share-completed";
      
      private static const §,"@§:String;
      
      private static const § true§:String;
      
      private static const §<;§:String = "download-failed";
      
      private static const §4"$§:String = "3rd-party-cookies-missing";
      
      private static const §4!z§:String = "invalid-level";
      
      private static const §2!I§:String = "flash-var-missing";
      
      private static const §%"A§:String = "friend-count";
      
      private static const §7]§:String = "start";
      
      private static const §#!r§:String = "complete";
      
      private static const §<!F§:String = "error";
      
      private static const §="6§:String = "open";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array;
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array;
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §!!R§:Array;
      
      private static var §;" §:int = 0;
      
      private static var §0!Z§:int = 0;
      
      private static var §[!X§:int = 0;
      
      private static var §`"6§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §`!y§ = AngryBirdsFP11.§4x§;
            loop0:
            while(true)
            {
               §>""§ = "powerup-used";
               loop1:
               while(true)
               {
                  §=!`§ = "level-powerup-used";
                  while(true)
                  {
                     §§push(§§findproperty(§#3§));
                     §§push("powerup-");
                     if(!(_loc1_ && _loc1_))
                     {
                        §§push(§§pop() + §5!k§);
                     }
                     §§pop().§#3§ = §§pop();
                     addr373:
                     if(_loc1_ && _loc2_)
                     {
                        continue;
                     }
                     §!!x§ = "share-clicked";
                     loop35:
                     while(true)
                     {
                        §<" § = "share-completed";
                        loop36:
                        while(true)
                        {
                           §,"@§ = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
                           loop37:
                           while(true)
                           {
                              § true§ = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
                              loop38:
                              for(; !_loc1_; if(!(_loc2_ || _loc2_))
                              {
                                 continue;
                              },SAMPLE_1_PERCENT_CATEGORIES = [§>""§,§=!`§,§#3§,§2"%§,§=!2§,§7"§,§6"$§,§?]§,§3!,§,§3%§,§?g§],§§goto(addr184))
                              {
                                 §<;§ = "download-failed";
                                 loop39:
                                 while(!(_loc1_ && _loc1_))
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    §4"$§ = "3rd-party-cookies-missing";
                                    loop40:
                                    while(!(_loc1_ && §+!B§))
                                    {
                                       §4!z§ = "invalid-level";
                                       loop41:
                                       while(_loc2_ || §+!B§)
                                       {
                                          §2!I§ = "flash-var-missing";
                                          loop42:
                                          while(_loc2_)
                                          {
                                             §%"A§ = "friend-count";
                                             loop43:
                                             while(true)
                                             {
                                                §7]§ = "start";
                                                loop44:
                                                while(true)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            §#!r§ = "complete";
                                                            loop45:
                                                            while(true)
                                                            {
                                                               §<!F§ = "error";
                                                               loop46:
                                                               while(true)
                                                               {
                                                                  if(!(_loc1_ && _loc2_))
                                                                  {
                                                                     addr243:
                                                                     if(!(_loc2_ || _loc2_))
                                                                     {
                                                                        break;
                                                                     }
                                                                     §="6§ = "open";
                                                                     loop47:
                                                                     while(true)
                                                                     {
                                                                        SAMPLE_1_PERCENT_FLASH_ACTIONS = [§]",§,§5!k§];
                                                                        continue loop37;
                                                                        addr192:
                                                                        while(true)
                                                                        {
                                                                           if(_loc2_ || §+!B§)
                                                                           {
                                                                              continue loop38;
                                                                           }
                                                                           continue loop47;
                                                                        }
                                                                        continue loop38;
                                                                     }
                                                                  }
                                                                  addr390:
                                                                  while(true)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           if(!_loc1_)
                                                                           {
                                                                              §"!I§ = §2!y§;
                                                                              break loop41;
                                                                           }
                                                                           break;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §?]§ = "shop";
                                                                           loop8:
                                                                           while(true)
                                                                           {
                                                                              §3!,§ = "brag";
                                                                              while(true)
                                                                              {
                                                                                 §3%§ = "invite";
                                                                                 while(!(_loc1_ && §+!B§))
                                                                                 {
                                                                                    §+"!§ = "gift-claimed";
                                                                                    while(!_loc1_)
                                                                                    {
                                                                                       §="D§ = "campaign-gift-claimed";
                                                                                       break loop44;
                                                                                    }
                                                                                    continue loop8;
                                                                                    loop27:
                                                                                    for(; !(_loc1_ && _loc2_); while(true)
                                                                                    {
                                                                                       if(!(_loc2_ || _loc2_))
                                                                                       {
                                                                                          continue loop27;
                                                                                       }
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          addr366:
                                                                                          if(_loc1_ && _loc2_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr373);
                                                                                       }
                                                                                       §§goto(addr446);
                                                                                    },while(!_loc1_)
                                                                                    {
                                                                                       § !Y§ = "product-selected";
                                                                                       §§goto(addr463);
                                                                                       §§goto(addr366);
                                                                                    },§§goto(addr506))
                                                                                    {
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          §=!<§ = "friend-clicked";
                                                                                          break loop40;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §+o§ = "external-url";
                                                                                          addr511:
                                                                                          while(true)
                                                                                          {
                                                                                             §`!t§ = "error";
                                                                                             addr506:
                                                                                             while(true)
                                                                                             {
                                                                                                §-";§ = "paused";
                                                                                                loop18:
                                                                                                while(true)
                                                                                                {
                                                                                                   §%!_§ = "resumed";
                                                                                                   break loop27;
                                                                                                   addr88:
                                                                                                   if(_loc1_ && _loc2_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §`"6§ = 0;
                                                                                                   addr95:
                                                                                                   if(_loc2_ || §+!B§)
                                                                                                   {
                                                                                                      if(_loc1_)
                                                                                                      {
                                                                                                         loop57:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc1_ && _loc2_))
                                                                                                            {
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                     addr70:
                                                                                                                  }
                                                                                                                  §[!X§ = 0;
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc2_ || _loc2_)
                                                                                                                     {
                                                                                                                        addr77:
                                                                                                                        if(!(_loc1_ && _loc1_))
                                                                                                                        {
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              continue loop40;
                                                                                                                           }
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              continue loop27;
                                                                                                                           }
                                                                                                                           §§goto(addr88);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           loop52:
                                                                                                                           while(_loc2_)
                                                                                                                           {
                                                                                                                              sSample10Percent = false;
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc2_)
                                                                                                                                 {
                                                                                                                                    if(_loc2_)
                                                                                                                                    {
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       sSample1Percent = false;
                                                                                                                                       continue loop45;
                                                                                                                                    }
                                                                                                                                    addr411:
                                                                                                                                    while(!_loc1_)
                                                                                                                                    {
                                                                                                                                       §>p§ = "opened";
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §8!r§ = "set";
                                                                                                                                          break loop39;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop1;
                                                                                                                                 }
                                                                                                                                 §§goto(addr192);
                                                                                                                                 addr49:
                                                                                                                                 if(!(_loc1_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    addr56:
                                                                                                                                    if(!(_loc1_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       if(!_loc1_)
                                                                                                                                       {
                                                                                                                                          return;
                                                                                                                                       }
                                                                                                                                       continue loop35;
                                                                                                                                    }
                                                                                                                                    continue loop37;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              loop24:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §?B§ = "product-buy-completed";
                                                                                                                                 addr446:
                                                                                                                                 addr463:
                                                                                                                                 while(_loc2_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §4";§ = "brag-shown";
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §>U§ = "brag-clicked";
                                                                                                                                       continue loop27;
                                                                                                                                       addr137:
                                                                                                                                       if(!(_loc2_ || _loc2_))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §!!R§ = [];
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §;" § = 0;
                                                                                                                                          addr116:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc2_)
                                                                                                                                             {
                                                                                                                                                if(_loc1_)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §0!Z§ = 0;
                                                                                                                                                continue loop57;
                                                                                                                                             }
                                                                                                                                             addr184:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                SAMPLE_100_PERCENT_CATEGORIES = [§`!t§];
                                                                                                                                                break loop52;
                                                                                                                                             }
                                                                                                                                             continue loop57;
                                                                                                                                          }
                                                                                                                                          continue loop43;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §2!y§ = "product-buy-selected";
                                                                                                                                    continue loop24;
                                                                                                                                    §§goto(addr446);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr77);
                                                                                                                           }
                                                                                                                           addr160:
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr125);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        FULL_SCREEN = "-full-screen";
                                                                                                                        §§goto(addr160);
                                                                                                                     }
                                                                                                                     §§goto(addr95);
                                                                                                                  }
                                                                                                                  continue loop18;
                                                                                                               }
                                                                                                               continue loop46;
                                                                                                            }
                                                                                                            §§goto(addr116);
                                                                                                         }
                                                                                                         continue loop44;
                                                                                                      }
                                                                                                      addr42:
                                                                                                      if(_loc1_ && _loc1_)
                                                                                                      {
                                                                                                         continue loop45;
                                                                                                      }
                                                                                                      §§goto(addr49);
                                                                                                   }
                                                                                                   §§goto(addr70);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr565:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §?g§ = "avatar";
                                                                        break loop46;
                                                                     }
                                                                     continue loop46;
                                                                  }
                                                                  loop4:
                                                                  while(true)
                                                                  {
                                                                     §=!2§ = "framerate";
                                                                     addr575:
                                                                     addr613:
                                                                     while(!(_loc1_ && §+!B§))
                                                                     {
                                                                        §7"§ = "external-pause";
                                                                        while(true)
                                                                        {
                                                                           §6"$§ = "gift";
                                                                           §§goto(addr565);
                                                                           addr531:
                                                                           while(!(_loc1_ && §+!B§))
                                                                           {
                                                                              §9w§ = "warning";
                                                                              while(true)
                                                                              {
                                                                                 §#"<§ = "user-statistics";
                                                                                 addr521:
                                                                                 while(true)
                                                                                 {
                                                                                    §2!;§ = "streaming";
                                                                                    §§goto(addr516);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §2"%§ = §5!k§ + "-powerup";
                                                                        continue loop4;
                                                                        §§goto(addr575);
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     §7"#§ = "halloween-shop";
                                                                     §§goto(addr531);
                                                                  }
                                                                  break;
                                                                  §§goto(addr243);
                                                               }
                                                               §§goto(addr575);
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      continue loop39;
                                                   }
                                                   continue loop42;
                                                }
                                                while(_loc2_)
                                                {
                                                   §>!%§ = "opened";
                                                   §§goto(addr468);
                                                }
                                                §§goto(addr526);
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §@W§ = §?B§;
                                          §§goto(addr357);
                                          §§goto(addr283);
                                       }
                                       addr283:
                                    }
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          if(!_loc1_)
                                          {
                                             §`[§ = "generic-clicked";
                                             §§goto(addr411);
                                          }
                                          §§goto(addr521);
                                       }
                                       break;
                                       §§goto(addr305);
                                    }
                                    addr305:
                                    §§goto(addr511);
                                 }
                                 while(true)
                                 {
                                    §26§ = "product-set";
                                    §§goto(addr390);
                                    §§goto(addr317);
                                 }
                                 addr317:
                              }
                              continue loop36;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr613);
      }
      
      public function §+!B§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §-o§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(Math.random() <= 0.1)
            {
               while(true)
               {
                  sSample10Percent = true;
                  addr60:
                  while(true)
                  {
                  }
                  addr45:
                  if(!(_loc1_ || _loc2_))
                  {
                     continue;
                  }
                  §§goto(addr19);
               }
            }
            loop2:
            for(; Math.random() <= 0.01; §§goto(addr60))
            {
               if(_loc1_)
               {
                  while(true)
                  {
                     sSample1Percent = true;
                  }
                  addr40:
               }
               while(true)
               {
                  if(!_loc1_)
                  {
                     continue loop2;
                  }
                  §§goto(addr45);
               }
            }
            addr19:
            return;
         }
         §§goto(addr40);
      }
      
      public static function §@!g§(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §""1§(§>f§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
         }
         var _loc3_:URLLoader = new URLLoader();
         if(!(_loc5_ && param2))
         {
            _loc3_.load(§-!l§.§%""§(AngryBirdsFP11.§76§ + "/clienterror/" + param1));
         }
      }
      
      public static function §""1§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§&!'§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS));
         if(_loc6_ || param1)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         if(_loc6_)
         {
            §>f§.trackSampledEvent(_loc4_,§5";§,param1,param2,param3);
         }
      }
      
      public static function §@§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§>"%§());
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || param2)
         {
            §@!t§(§>""§,param1,param2,0);
            do
            {
               §@!t§(§=!`§,param2,param1,0);
            }
            while(!_loc5_);
            
         }
      }
      
      public static function §[r§(param1:Array, param2:String, param3:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         if(!_loc6_)
         {
            if(enabled)
            {
               if(_loc5_ || param2)
               {
                  addr65:
                  §§push(§6;§(param1));
                  if(!_loc6_)
                  {
                     §§push(§§pop());
                     if(_loc5_)
                     {
                        addr73:
                        §§push(_loc4_ = §§pop());
                     }
                     if(§§pop())
                     {
                        if(!_loc6_)
                        {
                           §@!t§(§#3§,_loc4_,param2,param3);
                           do
                           {
                              §@!t§(§2"%§,param2,_loc4_,param3);
                           }
                           while(_loc6_);
                           
                           addr22:
                           return;
                           addr84:
                        }
                        §§goto(addr84);
                     }
                     §§goto(addr22);
                  }
                  §§goto(addr73);
               }
            }
            §§goto(addr22);
         }
         §§goto(addr65);
      }
      
      public static function §4"%§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:* = null;
         if(!(_loc7_ && §+!B§))
         {
            §§push(§!!R§);
            if(_loc8_ || param2)
            {
               if(§§pop().indexOf(param2) >= 0)
               {
                  if(!(_loc7_ && param3))
                  {
                     §§goto(addr46);
                  }
               }
               §§push(§!!R§);
            }
            var _loc5_:* = §§pop().length == 0;
            if(_loc8_ || param1)
            {
               §!!R§.push(param2);
               loop0:
               while(true)
               {
                  §§push(param3);
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§push(§>f§.ACTION_GPU_FPS_REPORT);
                        loop2:
                        while(true)
                        {
                           _loc6_ = §§pop();
                           loop3:
                           while(true)
                           {
                              if(_loc8_ || param3)
                              {
                                 if(_loc8_ || param3)
                                 {
                                    while(true)
                                    {
                                       §§push(param4);
                                       loop17:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc8_)
                                             {
                                                §§push(§+!B§.§,"@§);
                                                if(!(_loc7_ && param3))
                                                {
                                                   continue loop2;
                                                }
                                                addr142:
                                                if(_loc8_)
                                                {
                                                   _loc6_ = §§pop();
                                                   loop18:
                                                   while(true)
                                                   {
                                                      if(_loc7_ && param2)
                                                      {
                                                         continue loop3;
                                                      }
                                                      if(!_loc7_)
                                                      {
                                                         loop7:
                                                         while(true)
                                                         {
                                                            §§push(_loc5_);
                                                            if(!_loc8_)
                                                            {
                                                               continue loop17;
                                                            }
                                                            if(!_loc7_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc7_ && param3))
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     §""1§(_loc6_,param1.toString(),param1);
                                                                  }
                                                                  while(_loc8_)
                                                                  {
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§>f§.ACTION_CPU_FPS_REPORT);
                                                                     addr203:
                                                                     while(true)
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        addr204:
                                                                        while(true)
                                                                        {
                                                                           §§push(param4);
                                                                           addr189:
                                                                           while(_loc8_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§+!B§.§ true§);
                                                                                    addr194:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       addr195:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc6_ = §§pop();
                                                                                          break loop7;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr192:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                     }
                                                                  }
                                                                  addr108:
                                                                  addr200:
                                                               }
                                                               while(true)
                                                               {
                                                                  §@!t§(§=!2§,_loc6_,param2,param1);
                                                                  if(!_loc7_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr108);
                                                               }
                                                               if(_loc8_)
                                                               {
                                                                  return;
                                                               }
                                                               continue loop18;
                                                            }
                                                            §§goto(addr189);
                                                         }
                                                         addr76:
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr155);
                                                      }
                                                   }
                                                   addr145:
                                                }
                                                §§goto(addr195);
                                             }
                                             §§goto(addr145);
                                          }
                                          §§goto(addr76);
                                       }
                                    }
                                    addr186:
                                 }
                                 §§goto(addr204);
                              }
                              §§goto(addr192);
                           }
                        }
                     }
                     §§goto(addr200);
                  }
               }
            }
            §§goto(addr186);
         }
         addr46:
      }
      
      public static function §2§(param1:String, param2:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            var _loc3_:*;
            §§push((_loc3_ = §§findproperty(§;" §)).§;" §);
            if(_loc5_)
            {
               §§push(§§pop() + 1);
            }
            var _loc4_:* = §§pop();
            if(_loc5_ || param2)
            {
               _loc3_.§;" § = _loc4_;
            }
            if(!_loc6_)
            {
               §@!t§(§6"$§,§+"!§,param1,param2);
            }
         }
      }
      
      public static function § "D§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §@!t§(§6"$§,§="D§,null,0);
         }
      }
      
      public static function §3!o§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && §+!B§))
         {
            var _loc1_:*;
            §§push((_loc1_ = §§findproperty(§0!Z§)).§0!Z§);
            if(_loc3_ || _loc1_)
            {
               §§push(§§pop() + 1);
            }
            var _loc2_:* = §§pop();
            if(_loc3_)
            {
               _loc1_.§0!Z§ = _loc2_;
            }
            if(_loc3_ || _loc2_)
            {
               §[!X§ = §>"%§();
            }
            do
            {
               §@!t§(§7"§,§-";§,§0!Z§.toString(),§[!X§);
            }
            while(!(_loc3_ || _loc1_));
            
         }
      }
      
      public static function §;W§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §@!t§(§7"§,§%!_§,"",§>"%§(§[!X§));
         }
      }
      
      public static function §2!D§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!§`!y§)
            {
               if(!(_loc3_ && _loc2_))
               {
                  §@!t§(§7"#§,§>!%§,param1,0);
               }
            }
         }
      }
      
      public static function §<!w§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!§`!y§)
            {
               if(_loc1_)
               {
                  addr22:
                  §@!t§(§?]§,§>!%§,null,0);
               }
            }
            return;
         }
         §§goto(addr22);
      }
      
      public static function §8'§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!§`!y§)
            {
               if(!(_loc2_ && §+!B§))
               {
                  addr38:
                  §@!t§(§?]§,§ !Y§,param1,0);
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      public static function §1n§(param1:String, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(!§`!y§)
            {
               if(_loc4_)
               {
                  §@!t§(§?]§,§2!y§,param1,param2,false);
               }
            }
         }
      }
      
      public static function §,Z§(param1:String, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            if(!§`!y§)
            {
               if(!(_loc3_ && §+!B§))
               {
                  addr43:
                  §@!t§(§?]§,§?B§,param1,param2,false);
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public static function §%!+§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §@!t§(§3!,§,§4";§,param1,0);
         }
      }
      
      public static function §]!I§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §@!t§(§3!,§,§>U§,param1,0);
         }
      }
      
      public static function §6!3§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §@!t§(§3%§,§=!<§,null,0);
         }
      }
      
      public static function §&!x§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §@!t§(§3%§,§`[§,null,0);
         }
      }
      
      public static function §6t§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §@!t§(§?g§,§>p§,null,0);
         }
      }
      
      public static function §0!H§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §@!t§(§?g§,§8!r§,null,0);
         }
      }
      
      public static function §#!!§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || §+!B§)
         {
            §@!t§(§?g§,§26§,param1,0);
         }
      }
      
      public static function §1!4§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §@!t§(§?g§,§!!x§,null,0);
         }
      }
      
      public static function §3!1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §+!B§)
         {
            §@!t§(§?g§,§<" §,null,0);
         }
      }
      
      public static function §'"4§(param1:String, param2:int = 0) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            if(!§`!y§)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §@!t§(§?g§,§"!I§,param1,param2,false);
               }
            }
         }
      }
      
      public static function §[4§(param1:String, param2:int = 0) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!§`!y§)
            {
               if(_loc3_)
               {
                  §@!t§(§?g§,§@W§,param1,param2,false);
               }
            }
         }
      }
      
      public static function § P§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §@!t§(§9w§,§<;§,param1,0);
         }
      }
      
      public static function §?!a§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §@!t§(§9w§,§4"$§,null,0);
         }
      }
      
      public static function §1"4§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  §§push(param1);
                  if(!_loc2_)
                  {
                     if(§§pop().length == 0)
                     {
                        while(true)
                        {
                           §§push("[empty]");
                           if(_loc3_ || §+!B§)
                           {
                              param1 = §§pop();
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    continue;
                                 }
                              }
                              addr84:
                           }
                           else
                           {
                              §§goto(addr93);
                           }
                           §§goto(addr94);
                           addr48:
                           if(!(_loc2_ && §+!B§))
                           {
                              return;
                              addr65:
                           }
                        }
                     }
                     break;
                  }
                  continue;
               }
               if(_loc3_)
               {
                  addr93:
                  §§push("[null]");
                  while(true)
                  {
                     param1 = §§pop();
                  }
                  addr93:
               }
               while(true)
               {
                  break loop0;
               }
               addr94:
               §§goto(addr93);
            }
            while(true)
            {
               §@!t§(§9w§,§4!z§,param1,0);
               if(!_loc2_)
               {
                  §§goto(addr48);
               }
               §§goto(addr84);
            }
         }
         §§goto(addr65);
      }
      
      public static function §=>§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || §+!B§)
         {
            §@!t§(§9w§,§2!I§,param1,0);
         }
      }
      
      public static function §3!W§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §@!t§(§#"<§,§%"A§,param1.toString(),param1);
         }
      }
      
      public static function §4"D§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §@!t§(§2!;§,§7]§,param1,0);
         }
      }
      
      public static function §``§(param1:String, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §@!t§(§2!;§,§<!F§,param1,param2);
         }
      }
      
      public static function §8V§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §@!t§(§2!;§,§#!r§,param1,0);
         }
      }
      
      public static function §[B§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §@!t§(§+o§,§="6§,param1,0);
         }
      }
      
      public static function §;"-§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §@!t§(§`!t§,param1,"",0,false);
         }
      }
      
      private static function §@!t§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
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
                  §§push(§;f§);
                  while(true)
                  {
                     _loc6_ = §§pop();
                     loop2:
                     while(true)
                     {
                        if(param5)
                        {
                           if(!_loc7_)
                           {
                              §§push(§&!'§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES));
                              if(!_loc7_)
                              {
                                 §§push(§§pop());
                              }
                              if(!_loc8_)
                              {
                                 break;
                              }
                              _loc6_ = §§pop();
                           }
                           loop3:
                           while(true)
                           {
                              addr37:
                              while(true)
                              {
                                 trackSampledEvent(_loc6_,param1,param2,param3,param4);
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              if(_loc8_)
                              {
                                 if(_loc8_)
                                 {
                                    addr23:
                                    return;
                                    addr61:
                                 }
                                 continue loop0;
                              }
                              continue loop2;
                           }
                        }
                        §§goto(addr37);
                     }
                  }
               }
            }
            §§goto(addr23);
         }
         §§goto(addr61);
      }
      
      private static function §&!'§(param1:String, param2:Array, param3:Array) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && §+!B§))
         {
            §§push(param3);
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  if(§§pop().indexOf(§§pop()) >= 0)
                  {
                     if(!(_loc5_ && param2))
                     {
                        break;
                     }
                     addr95:
                     while(true)
                     {
                     }
                     addr95:
                  }
                  while(true)
                  {
                     §§push(param2);
                     if(_loc4_)
                     {
                        §§push(param1);
                        if(!(_loc5_ && §+!B§))
                        {
                           if(§§pop().indexOf(§§pop()) < 0)
                           {
                              if(!(_loc4_ || param2))
                              {
                                 break;
                              }
                              if(_loc4_ || param2)
                              {
                                 return TRACKING_FUNCTION_10_PERCENT;
                              }
                              §§goto(addr95);
                           }
                           break;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
                  return §;f§;
               }
               return TRACKING_FUNCTION_1_PERCENT;
            }
         }
         §§goto(addr95);
      }
      
      private static function §6;§(param1:Array) : String
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = null;
         if(_loc8_)
         {
            §§push(param1);
            if(!(_loc7_ && _loc2_))
            {
               §§push(§§pop() == null);
               if(_loc8_)
               {
                  if(!§§pop())
                  {
                     if(!_loc7_)
                     {
                        addr38:
                        §§pop();
                        §§goto(addr55);
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc8_ || _loc2_)
                     {
                        return null;
                     }
                     §§goto(addr55);
                  }
                  addr55:
                  if(!_loc7_)
                  {
                     addr42:
                     §§push(param1.length == 0);
                  }
                  var _loc2_:* = "";
                  var _loc3_:Array = param1.concat();
                  if(_loc8_)
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
                              if(_loc7_)
                              {
                                 break;
                                 addr154:
                              }
                              if(§§pop().length > 0)
                              {
                                 if(_loc8_)
                                 {
                                    §§push(_loc2_);
                                    if(_loc7_ && _loc3_)
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 }
                              }
                              else
                              {
                                 §§push(_loc4_);
                                 if(!(_loc7_ && §+!B§))
                                 {
                                    §§push(§§pop());
                                 }
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                                 _loc2_ = §§pop();
                                 if(_loc8_ || param1)
                                 {
                                    if(!(_loc7_ && param1))
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
                           addr153:
                           _loc2_ = §§pop();
                           §§goto(addr154);
                        }
                     }
                  }
                  return _loc2_;
               }
               §§goto(addr38);
            }
            §§goto(addr42);
         }
         §§goto(addr38);
      }
      
      private static function §>"%§(param1:int = 0) : int
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
