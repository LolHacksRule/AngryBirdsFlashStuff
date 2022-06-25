package §]+§
{
   import §7X§.§+!p§;
   import flash.net.URLLoader;
   import flash.utils.getTimer;
   
   public class §@!J§ extends §%!M§
   {
      
      private static const §^!5§:Boolean;
      
      private static const §=!0§:String = "powerup-used";
      
      private static const §3&§:String = "level-powerup-used";
      
      private static const §+r§:String;
      
      private static const §`!x§:String;
      
      private static const §5>§:String = "framerate";
      
      private static const §5!9§:String = "external-pause";
      
      private static const §84§:String = "gift";
      
      private static const § n§:String = "shop";
      
      private static const §?>§:String = "brag";
      
      private static const §'N§:String = "invite";
      
      private static const §@!T§:String = "avatar";
      
      private static const §7p§:String = "warning";
      
      private static const §'L§:String = "user-statistics";
      
      private static const §1!l§:String = "error";
      
      private static const §;!'§:String = "paused";
      
      private static const §0!v§:String = "resumed";
      
      private static const §@§:String = "gift-claimed";
      
      private static const §`!!§:String = "campaign-gift-claimed";
      
      private static const §3B§:String = "opened";
      
      private static const §%!<§:String = "product-selected";
      
      private static const §=R§:String = "product-buy-selected";
      
      private static const §,k§:String = "product-buy-completed";
      
      private static const §9§:String = "brag-shown";
      
      private static const §7T§:String = "brag-clicked";
      
      private static const §7!s§:String = "friend-clicked";
      
      private static const §8!_§:String = "generic-clicked";
      
      private static const §&=§:String = "opened";
      
      private static const §`Z§:String = "set";
      
      private static const §<d§:String = "product-set";
      
      private static const §8d§:String = "product-buy-selected";
      
      private static const §#`§:String = "product-buy-completed";
      
      private static const §7'§:String = "share-clicked";
      
      private static const §&!t§:String = "share-completed";
      
      private static const §5H§:String;
      
      private static const §%=§:String;
      
      private static const §2!;§:String = "download-failed";
      
      private static const §6i§:String = "3rd-party-cookies-missing";
      
      private static const §0!I§:String = "invalid-level";
      
      private static const §&7§:String = "flash-var-missing";
      
      private static const § !_§:String = "friend-count";
      
      private static const §3%§:String = "advertisement-click";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array;
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array;
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §;!7§:Array;
      
      private static var §"!X§:int = 0;
      
      private static var §?w§:int = 0;
      
      private static var §30§:int = 0;
      
      private static var §!9§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §^!5§ = AngryBirdsFP11.§@a§;
            loop0:
            while(true)
            {
               §=!0§ = "powerup-used";
               while(true)
               {
                  §3&§ = "level-powerup-used";
                  loop2:
                  while(true)
                  {
                     §§push(§§findproperty(§+r§));
                     §§push("powerup-");
                     if(!(_loc1_ && _loc1_))
                     {
                        §§push(§§pop() + §]-§);
                     }
                     §§pop().§+r§ = §§pop();
                     while(true)
                     {
                        §`!x§ = §]-§ + "-powerup";
                        while(_loc2_ || §@!J§)
                        {
                           continue loop2;
                           loop6:
                           for(; _loc2_ || _loc1_; while(!(_loc1_ && _loc1_))
                           {
                              §7'§ = "share-clicked";
                              §§goto(addr349);
                           })
                           {
                              §84§ = "gift";
                              loop7:
                              while(true)
                              {
                                 § n§ = "shop";
                                 loop8:
                                 while(true)
                                 {
                                    §?>§ = "brag";
                                    loop9:
                                    while(true)
                                    {
                                       §'N§ = "invite";
                                       addr502:
                                       addr541:
                                       loop10:
                                       while(_loc2_ || _loc1_)
                                       {
                                          §@!T§ = "avatar";
                                          loop11:
                                          while(true)
                                          {
                                             §7p§ = "warning";
                                             loop12:
                                             while(true)
                                             {
                                                §'L§ = "user-statistics";
                                                loop13:
                                                while(true)
                                                {
                                                   §1!l§ = "error";
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §;!'§ = "paused";
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §0!v§ = "resumed";
                                                         loop16:
                                                         for(; !_loc1_; if(_loc1_ && _loc2_)
                                                         {
                                                            continue;
                                                         },§<d§ = "product-set",§§goto(addr371))
                                                         {
                                                            §@§ = "gift-claimed";
                                                            loop17:
                                                            for(; _loc2_; if(_loc1_ && _loc1_)
                                                            {
                                                               continue;
                                                            },if(!_loc2_)
                                                            {
                                                               continue loop0;
                                                            },sSample10Percent = false,§§goto(addr132))
                                                            {
                                                               §`!!§ = "campaign-gift-claimed";
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  §3B§ = "opened";
                                                                  while(true)
                                                                  {
                                                                     §%!<§ = "product-selected";
                                                                     while(true)
                                                                     {
                                                                        §=R§ = "product-buy-selected";
                                                                        continue loop12;
                                                                        addr371:
                                                                        while(!(_loc1_ && _loc1_))
                                                                        {
                                                                           §8d§ = §=R§;
                                                                           while(true)
                                                                           {
                                                                              §#`§ = §,k§;
                                                                              continue loop6;
                                                                           }
                                                                           if(_loc1_ && _loc2_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!_loc1_)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                           addr414:
                                                                           while(true)
                                                                           {
                                                                              §8!_§ = "generic-clicked";
                                                                              continue loop11;
                                                                           }
                                                                        }
                                                                     }
                                                                     addr146:
                                                                     if(_loc1_ && §@!J§)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     sSample1Percent = false;
                                                                     loop49:
                                                                     while(!(_loc1_ && _loc2_))
                                                                     {
                                                                        §;!7§ = [];
                                                                        loop50:
                                                                        while(_loc2_)
                                                                        {
                                                                           §"!X§ = 0;
                                                                           loop51:
                                                                           while(!_loc1_)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              addr431:
                                                                              while(_loc2_)
                                                                              {
                                                                                 §7T§ = "brag-clicked";
                                                                                 while(true)
                                                                                 {
                                                                                    §7!s§ = "friend-clicked";
                                                                                    §§goto(addr414);
                                                                                    loop46:
                                                                                    while(_loc2_ || _loc2_)
                                                                                    {
                                                                                       FULL_SCREEN = "-full-screen";
                                                                                       loop47:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc1_)
                                                                                          {
                                                                                             continue loop46;
                                                                                          }
                                                                                          §§goto(addr160);
                                                                                          addr132:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc2_ || _loc1_))
                                                                                             {
                                                                                                continue loop47;
                                                                                             }
                                                                                             if(_loc1_ && §@!J§)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr146);
                                                                                             addr47:
                                                                                             if(_loc1_ && §@!J§)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                addr207:
                                                                                                while(!(_loc1_ && _loc2_))
                                                                                                {
                                                                                                   SAMPLE_100_PERCENT_CATEGORIES = [§1!l§];
                                                                                                   continue loop46;
                                                                                                }
                                                                                                while(!(_loc1_ && §@!J§))
                                                                                                {
                                                                                                   if(_loc1_)
                                                                                                   {
                                                                                                      continue loop18;
                                                                                                   }
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      addr311:
                                                                                                      if(!(_loc2_ || §@!J§))
                                                                                                      {
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                      §2!;§ = "download-failed";
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §6i§ = "3rd-party-cookies-missing";
                                                                                                         continue loop14;
                                                                                                         addr70:
                                                                                                         if(_loc2_ || _loc1_)
                                                                                                         {
                                                                                                            if(!_loc1_)
                                                                                                            {
                                                                                                               §!9§ = 0;
                                                                                                               addr79:
                                                                                                               if(_loc2_ || _loc1_)
                                                                                                               {
                                                                                                                  if(_loc1_ && _loc2_)
                                                                                                                  {
                                                                                                                     continue loop49;
                                                                                                                  }
                                                                                                                  §§goto(addr47);
                                                                                                                  continue loop49;
                                                                                                               }
                                                                                                               loop53:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc2_)
                                                                                                                        {
                                                                                                                           if(_loc2_)
                                                                                                                           {
                                                                                                                              if(_loc1_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §30§ = 0;
                                                                                                                              continue loop53;
                                                                                                                           }
                                                                                                                           continue loop50;
                                                                                                                        }
                                                                                                                        continue loop51;
                                                                                                                     }
                                                                                                                     while(_loc2_)
                                                                                                                     {
                                                                                                                        continue loop7;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc1_)
                                                                                                                        {
                                                                                                                           continue loop6;
                                                                                                                        }
                                                                                                                        if(_loc1_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        SAMPLE_1_PERCENT_FLASH_ACTIONS = [§4U§,§]-§];
                                                                                                                        §§goto(addr231);
                                                                                                                     }
                                                                                                                     addr231:
                                                                                                                     continue loop11;
                                                                                                                     addr245:
                                                                                                                     addr84:
                                                                                                                  }
                                                                                                                  §§goto(addr70);
                                                                                                               }
                                                                                                               continue;
                                                                                                            }
                                                                                                            continue loop15;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §&!t§ = "share-completed";
                                                                                                         continue loop18;
                                                                                                      }
                                                                                                      addr349:
                                                                                                   }
                                                                                                   §§goto(addr207);
                                                                                                }
                                                                                                addr207:
                                                                                                continue loop13;
                                                                                                addr300:
                                                                                             }
                                                                                             addr56:
                                                                                             if(_loc2_ || _loc1_)
                                                                                             {
                                                                                                return;
                                                                                                addr63:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr259:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                § !_§ = "friend-count";
                                                                                                break loop49;
                                                                                                §§goto(addr56);
                                                                                             }
                                                                                          }
                                                                                          loop28:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                continue loop16;
                                                                                             }
                                                                                             addr397:
                                                                                             while(true)
                                                                                             {
                                                                                                §`Z§ = "set";
                                                                                                continue loop28;
                                                                                             }
                                                                                          }
                                                                                          continue loop16;
                                                                                       }
                                                                                       §§goto(addr371);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §9§ = "brag-shown";
                                                                                 §§goto(addr424);
                                                                              }
                                                                              addr424:
                                                                           }
                                                                           §§goto(addr366);
                                                                        }
                                                                        while(!_loc1_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              SAMPLE_1_PERCENT_CATEGORIES = [§=!0§,§3&§,§+r§,§`!x§,§5>§,§5!9§,§84§,§ n§,§?>§,§'N§,§@!T§];
                                                                              §§goto(addr207);
                                                                           }
                                                                           §§goto(addr63);
                                                                        }
                                                                        while(_loc2_)
                                                                        {
                                                                           §&7§ = "flash-var-missing";
                                                                           §§goto(addr259);
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §3%§ = "advertisement-click";
                                                                        §§goto(addr245);
                                                                        §§goto(addr120);
                                                                     }
                                                                     addr120:
                                                                  }
                                                               }
                                                            }
                                                            continue loop9;
                                                         }
                                                         continue loop10;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §5!9§ = "external-pause";
                                          continue loop6;
                                          §§goto(addr502);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr224);
      }
      
      public function §@!J§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §]![§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(Math.random() <= 0.1)
            {
               if(_loc1_ || _loc1_)
               {
                  addr57:
                  sSample10Percent = true;
               }
               while(true)
               {
                  addr38:
                  if(_loc1_)
                  {
                     sSample1Percent = true;
                  }
                  if(!_loc1_)
                  {
                     continue;
                  }
                  §§goto(addr19);
               }
               addr60:
            }
            while(true)
            {
               if(Math.random() <= 0.01)
               {
                  §§goto(addr38);
               }
               break;
               §§goto(addr60);
            }
            addr19:
            return;
         }
         §§goto(addr57);
      }
      
      public static function §'0§(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §[!G§(§%!M§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
         }
         var _loc3_:URLLoader = new URLLoader();
         if(_loc4_)
         {
            _loc3_.load(§+!p§.§`;§(AngryBirdsFP11.§;!1§ + "/clienterror/" + param1));
         }
      }
      
      public static function §[!G§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§ for§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS));
         if(!_loc6_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         if(_loc5_)
         {
            §%!M§.trackSampledEvent(_loc4_,§4i§,param1,param2,param3);
         }
      }
      
      public static function §'!?§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§!!,§());
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            §!!R§(§=!0§,param1,param2,0);
            do
            {
               §!!R§(§3&§,param2,param1,0);
            }
            while(!(_loc4_ || param2));
            
         }
      }
      
      public static function §+k§(param1:Array, param2:String, param3:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         if(_loc5_ || §@!J§)
         {
            if(enabled)
            {
               loop0:
               do
               {
                  §§push(§#S§(param1));
                  if(!(_loc6_ && param2))
                  {
                     §§push(§§pop());
                     if(_loc5_)
                     {
                        addr78:
                        §§push(_loc4_ = §§pop());
                     }
                     if(!§§pop())
                     {
                        break;
                     }
                     if(!(_loc5_ || param1))
                     {
                        continue;
                     }
                     while(true)
                     {
                        §!!R§(§+r§,_loc4_,param2,param3);
                        continue loop0;
                     }
                  }
                  §§goto(addr78);
               }
               while(do
               {
                  §!!R§(§`!x§,param2,_loc4_,param3);
               }
               while(_loc6_);
               , !_loc5_);
               
            }
            return;
         }
         §§goto(addr88);
      }
      
      public static function §8!z§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:* = null;
         if(_loc8_ || param3)
         {
            §§push(§;!7§);
            if(!_loc7_)
            {
               if(§§pop().indexOf(param2) >= 0)
               {
                  if(_loc8_)
                  {
                     §§goto(addr36);
                  }
               }
               §§push(§;!7§);
            }
            var _loc5_:* = §§pop().length == 0;
            if(_loc8_)
            {
               §;!7§.push(param2);
               loop0:
               while(true)
               {
                  §§push(param3);
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§push(§%!M§.ACTION_GPU_FPS_REPORT);
                        loop2:
                        while(true)
                        {
                           _loc6_ = §§pop();
                           loop3:
                           while(true)
                           {
                              §§push(param4);
                              loop4:
                              while(true)
                              {
                                 if(!(_loc7_ && param1))
                                 {
                                    if(§§pop())
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          if(_loc8_ || §@!J§)
                                          {
                                             if(_loc8_ || param2)
                                             {
                                                while(true)
                                                {
                                                   §§push(§@!J§.§5H§);
                                                   if(_loc8_)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§push(§§pop());
                                                   }
                                                   if(!(_loc7_ && param3))
                                                   {
                                                      _loc6_ = §§pop();
                                                      loop18:
                                                      while(true)
                                                      {
                                                         addr68:
                                                         loop10:
                                                         while(true)
                                                         {
                                                            §§push(_loc5_);
                                                            if(_loc7_)
                                                            {
                                                               break;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!(_loc7_ && §@!J§))
                                                                  {
                                                                     addr80:
                                                                     if(!_loc8_)
                                                                     {
                                                                        break;
                                                                        addr98:
                                                                     }
                                                                     §[!G§(_loc6_,param1.toString(),param1);
                                                                     while(_loc8_)
                                                                     {
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  continue loop18;
                                                                  addr58:
                                                                  if(_loc8_ || param2)
                                                                  {
                                                                     addr65:
                                                                     if(!_loc7_)
                                                                     {
                                                                        return;
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  addr141:
                                                                  while(true)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  §§goto(addr80);
                                                               }
                                                               addr181:
                                                            }
                                                            while(true)
                                                            {
                                                               §!!R§(§5>§,_loc6_,param2,param1);
                                                               if(_loc8_)
                                                               {
                                                                  §§goto(addr58);
                                                               }
                                                               §§goto(addr98);
                                                            }
                                                            §§goto(addr65);
                                                         }
                                                         continue loop4;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            _loc6_ = §§pop();
                                                            §§goto(addr181);
                                                         }
                                                         else
                                                         {
                                                            loop16:
                                                            while(true)
                                                            {
                                                               _loc6_ = §§pop();
                                                               addr189:
                                                               while(true)
                                                               {
                                                                  §§push(param4);
                                                                  addr151:
                                                                  while(_loc8_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           addr185:
                                                                           while(true)
                                                                           {
                                                                              continue loop16;
                                                                           }
                                                                        }
                                                                        addr164:
                                                                     }
                                                                     §§goto(addr68);
                                                                  }
                                                                  continue loop1;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr178:
                                                   }
                                                   §§goto(addr141);
                                                }
                                                addr125:
                                             }
                                             §§goto(addr189);
                                          }
                                          §§goto(addr164);
                                       }
                                    }
                                    §§goto(addr68);
                                 }
                                 §§goto(addr151);
                              }
                           }
                        }
                     }
                     §§goto(addr185);
                  }
               }
            }
            §§goto(addr125);
         }
         addr36:
      }
      
      public static function §<"§(param1:String, param2:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            var _loc3_:*;
            §§push((_loc3_ = §§findproperty(§"!X§)).§"!X§);
            if(_loc6_ || _loc3_)
            {
               §§push(§§pop() + 1);
            }
            var _loc4_:* = §§pop();
            if(_loc6_)
            {
               _loc3_.§"!X§ = _loc4_;
            }
            if(!(_loc5_ && param2))
            {
               addr71:
               §!!R§(§84§,§@§,param1,param2);
            }
            return;
         }
         §§goto(addr71);
      }
      
      public static function §>Z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §!!R§(§84§,§`!!§,null,0);
         }
      }
      
      public static function §9]§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            var _loc1_:*;
            §§push((_loc1_ = §§findproperty(§?w§)).§?w§);
            if(!_loc3_)
            {
               §§push(§§pop() + 1);
            }
            var _loc2_:* = §§pop();
            if(_loc4_)
            {
               _loc1_.§?w§ = _loc2_;
            }
            if(!(_loc3_ && §@!J§))
            {
               §30§ = §!!,§();
            }
         }
         do
         {
            §!!R§(§5!9§,§;!'§,§?w§.toString(),§30§);
         }
         while(_loc3_);
         
      }
      
      public static function §3!q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §!!R§(§5!9§,§0!v§,"",§!!,§(§30§));
         }
      }
      
      public static function §?a§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §@!J§)
         {
            if(!§^!5§)
            {
               if(_loc2_)
               {
                  addr38:
                  §!!R§(§ n§,§3B§,null,0);
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      public static function §[q§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(!§^!5§)
            {
               if(_loc2_ || §@!J§)
               {
                  §!!R§(§ n§,§%!<§,param1,0);
               }
            }
         }
      }
      
      public static function §81§(param1:String, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            if(!§^!5§)
            {
               if(!(_loc4_ && _loc3_))
               {
                  addr42:
                  §!!R§(§ n§,§=R§,param1,param2,false);
               }
            }
            return;
         }
         §§goto(addr42);
      }
      
      public static function §4!n§(param1:String, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(!§^!5§)
            {
               if(!_loc3_)
               {
                  addr23:
                  §!!R§(§ n§,§,k§,param1,param2,false);
               }
            }
            return;
         }
         §§goto(addr23);
      }
      
      public static function § K§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §!!R§(§?>§,§9§,param1,0);
         }
      }
      
      public static function §6>§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §!!R§(§?>§,§7T§,param1,0);
         }
      }
      
      public static function §+!F§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §!!R§(§'N§,§7!s§,null,0);
         }
      }
      
      public static function §3n§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §!!R§(§'N§,§8!_§,null,0);
         }
      }
      
      public static function §4!"§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §!!R§(§@!T§,§&=§,null,0);
         }
      }
      
      public static function §^k§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §!!R§(§@!T§,§`Z§,null,0);
         }
      }
      
      public static function §]!3§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §!!R§(§@!T§,§<d§,param1,0);
         }
      }
      
      public static function §7!0§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §!!R§(§@!T§,§7'§,null,0);
         }
      }
      
      public static function §;J§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §!!R§(§@!T§,§&!t§,null,0);
         }
      }
      
      public static function §-;§(param1:String, param2:int = 0) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!§^!5§)
            {
               if(_loc3_)
               {
                  addr22:
                  §!!R§(§@!T§,§8d§,param1,param2,false);
               }
            }
            return;
         }
         §§goto(addr22);
      }
      
      public static function §]!D§(param1:String, param2:int = 0) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            if(!§^!5§)
            {
               if(!_loc4_)
               {
                  §!!R§(§@!T§,§#`§,param1,param2,false);
               }
            }
         }
      }
      
      public static function §4t§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §!!R§(§7p§,§2!;§,param1,0);
         }
      }
      
      public static function §"!C§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §!!R§(§7p§,§6i§,null,0);
         }
      }
      
      public static function §@8§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            loop0:
            while(§§pop() != null)
            {
               §§push(param1);
               if(!_loc3_)
               {
                  if(§§pop().length == 0)
                  {
                     while(true)
                     {
                        if(_loc2_)
                        {
                           §§push("[empty]");
                           if(!(_loc3_ && _loc3_))
                           {
                              param1 = §§pop();
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    break loop0;
                                 }
                                 §§goto(addr23);
                              }
                           }
                           while(true)
                           {
                              param1 = §§pop();
                           }
                           addr87:
                        }
                        while(true)
                        {
                        }
                     }
                  }
                  addr23:
                  while(true)
                  {
                     §!!R§(§7p§,§0!I§,param1,0);
                     if(_loc2_ || _loc2_)
                     {
                        continue loop1;
                     }
                     continue loop2;
                  }
               }
               continue;
               addr59:
               return;
            }
         }
         while(true)
         {
            §§goto(addr87);
         }
      }
      
      public static function §&B§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §!!R§(§7p§,§&7§,param1,0);
         }
      }
      
      public static function §<!=§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §!!R§(§'L§,§ !_§,param1.toString(),param1);
         }
      }
      
      public static function §!v§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §!!R§(§'L§,§3%§,param1,0);
         }
      }
      
      public static function §#D§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && §@!J§))
         {
            §!!R§(§1!l§,param1,"",0,false);
         }
      }
      
      private static function §!!R§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:* = null;
         if(!(_loc8_ && param3))
         {
            if(enabled)
            {
               loop0:
               while(true)
               {
                  §§push(§2!6§);
                  loop1:
                  while(true)
                  {
                     _loc6_ = §§pop();
                     loop2:
                     while(true)
                     {
                        if(!param5)
                        {
                           loop3:
                           while(true)
                           {
                              trackSampledEvent(_loc6_,param1,param2,param3,param4);
                              if(_loc8_ && §@!J§)
                              {
                                 continue;
                              }
                              if(!(_loc8_ && §@!J§))
                              {
                                 if(!_loc8_)
                                 {
                                    break loop2;
                                 }
                                 continue loop2;
                              }
                              addr69:
                              addr69:
                              while(true)
                              {
                                 §§push(§ for§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES));
                                 if(!(_loc8_ && param1))
                                 {
                                    if(_loc8_ && param1)
                                    {
                                       continue loop1;
                                    }
                                    §§push(§§pop());
                                 }
                                 _loc6_ = §§pop();
                                 continue loop3;
                              }
                           }
                           continue loop0;
                           addr31:
                        }
                        §§goto(addr69);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr69);
      }
      
      private static function § for§(param1:String, param2:Array, param3:Array) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(param3);
            loop0:
            while(true)
            {
               §§push(param1);
               addr75:
               addr78:
               while(§§pop().indexOf(§§pop()) < 0)
               {
                  continue loop0;
               }
               addr78:
               return TRACKING_FUNCTION_1_PERCENT;
            }
         }
         §§goto(addr70);
      }
      
      private static function §#S§(param1:Array) : String
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = null;
         if(_loc8_)
         {
            §§push(param1);
            if(!(_loc7_ && _loc3_))
            {
               §§push(§§pop() == null);
               if(_loc8_)
               {
                  if(!§§pop())
                  {
                     if(_loc8_)
                     {
                        §§pop();
                        if(_loc8_)
                        {
                           §§goto(addr45);
                        }
                        return null;
                     }
                  }
               }
               §§goto(addr45);
            }
            addr45:
            if(param1.length == 0)
            {
               if(_loc7_ && _loc3_)
               {
                  §§goto(addr55);
               }
            }
            §§goto(addr55);
         }
         addr55:
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
                  loop3:
                  while(true)
                  {
                     §§push(_loc2_);
                     while(§§pop().length <= 0)
                     {
                        §§push(_loc4_);
                        if(!_loc7_)
                        {
                           if(_loc7_ && _loc2_)
                           {
                              break loop2;
                           }
                           if(_loc8_)
                           {
                              addr97:
                              _loc2_ = §§pop();
                              if(!(_loc7_ && _loc3_))
                              {
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                                 if(false)
                                 {
                                    continue loop3;
                                 }
                              }
                              continue loop0;
                              addr154:
                           }
                           continue;
                        }
                        §§goto(addr97);
                     }
                     if(_loc8_ || §@!J§)
                     {
                        §§push(_loc2_);
                        if(!(_loc8_ || _loc2_))
                        {
                           break loop2;
                        }
                        continue loop1;
                     }
                     continue loop2;
                  }
               }
               addr153:
               _loc2_ = §§pop();
               §§goto(addr154);
            }
         }
         return _loc2_;
      }
      
      private static function §!!,§(param1:int = 0) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(getTimer() / 1000);
         if(!(_loc3_ && _loc3_))
         {
            return §§pop() - param1;
         }
      }
   }
}
