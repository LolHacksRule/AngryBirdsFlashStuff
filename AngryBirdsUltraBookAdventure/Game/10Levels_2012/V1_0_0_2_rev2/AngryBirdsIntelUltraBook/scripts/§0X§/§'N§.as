package §0X§
{
   import §;!5§.§ v§;
   import flash.net.URLLoader;
   import flash.utils.getTimer;
   
   public class §'N§ extends §'W§
   {
      
      private static const §,!$§:Boolean;
      
      private static const §;4§:String = "powerup-used";
      
      private static const §4q§:String = "level-powerup-used";
      
      private static const §9!F§:String;
      
      private static const § !!§:String;
      
      private static const §1!q§:String = "framerate";
      
      private static const §^!=§:String = "external-pause";
      
      private static const §^I§:String = "gift";
      
      private static const §-!v§:String = "shop";
      
      private static const §`!b§:String = "brag";
      
      private static const §?w§:String = "invite";
      
      private static const §%!$§:String = "avatar";
      
      private static const §!d§:String = "warning";
      
      private static const §#1§:String = "user-statistics";
      
      private static const §-G§:String = "error";
      
      private static const §7!s§:String = "paused";
      
      private static const §6!]§:String = "resumed";
      
      private static const §6!?§:String = "gift-claimed";
      
      private static const §'!q§:String = "campaign-gift-claimed";
      
      private static const §?u§:String = "opened";
      
      private static const §3%§:String = "product-selected";
      
      private static const §;!#§:String = "product-buy-selected";
      
      private static const §`,§:String = "product-buy-completed";
      
      private static const §7o§:String = "brag-shown";
      
      private static const §3;§:String = "brag-clicked";
      
      private static const §^!-§:String = "friend-clicked";
      
      private static const §4R§:String = "generic-clicked";
      
      private static const §+!b§:String = "opened";
      
      private static const §2M§:String = "set";
      
      private static const §>!v§:String = "product-set";
      
      private static const §5!a§:String = "product-buy-selected";
      
      private static const § g§:String = "product-buy-completed";
      
      private static const §^!,§:String = "share-clicked";
      
      private static const §9'§:String = "share-completed";
      
      private static const §;"§:String;
      
      private static const §<b§:String;
      
      private static const §'!_§:String = "download-failed";
      
      private static const §4s§:String = "3rd-party-cookies-missing";
      
      private static const §@!v§:String = "invalid-level";
      
      private static const §4!L§:String = "flash-var-missing";
      
      private static const §!a§:String = "friend-count";
      
      private static const §6^§:String = "advertisement-click";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array;
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array;
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §&D§:Array;
      
      private static var §[+§:int = 0;
      
      private static var §0!5§:int = 0;
      
      private static var §[!M§:int = 0;
      
      private static var §@!6§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §,!$§ = AngryBirdsFP11.§[!d§;
            loop0:
            while(true)
            {
               §;4§ = "powerup-used";
               while(true)
               {
                  §4q§ = "level-powerup-used";
                  loop2:
                  while(true)
                  {
                     §§push(§§findproperty(§9!F§));
                     §§push("powerup-");
                     if(!(_loc1_ && _loc1_))
                     {
                        §§push(§§pop() + §`q§);
                     }
                     §§pop().§9!F§ = §§pop();
                     while(true)
                     {
                        § !!§ = §`q§ + "-powerup";
                        while(_loc2_ || §'N§)
                        {
                           continue loop2;
                           loop6:
                           for(; _loc2_ || _loc1_; while(!(_loc1_ && _loc1_))
                           {
                              §^!,§ = "share-clicked";
                              §§goto(addr349);
                           })
                           {
                              §^I§ = "gift";
                              loop7:
                              while(true)
                              {
                                 §-!v§ = "shop";
                                 loop8:
                                 while(true)
                                 {
                                    §`!b§ = "brag";
                                    loop9:
                                    while(true)
                                    {
                                       §?w§ = "invite";
                                       addr502:
                                       addr541:
                                       loop10:
                                       while(_loc2_ || _loc1_)
                                       {
                                          §%!$§ = "avatar";
                                          loop11:
                                          while(true)
                                          {
                                             §!d§ = "warning";
                                             loop12:
                                             while(true)
                                             {
                                                §#1§ = "user-statistics";
                                                loop13:
                                                while(true)
                                                {
                                                   §-G§ = "error";
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §7!s§ = "paused";
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §6!]§ = "resumed";
                                                         loop16:
                                                         for(; !_loc1_; if(_loc1_ && _loc2_)
                                                         {
                                                            continue;
                                                         },§>!v§ = "product-set",§§goto(addr371))
                                                         {
                                                            §6!?§ = "gift-claimed";
                                                            loop17:
                                                            for(; _loc2_; if(_loc1_ && _loc1_)
                                                            {
                                                               continue;
                                                            },if(!_loc2_)
                                                            {
                                                               continue loop0;
                                                            },sSample10Percent = false,§§goto(addr132))
                                                            {
                                                               §'!q§ = "campaign-gift-claimed";
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  §?u§ = "opened";
                                                                  while(true)
                                                                  {
                                                                     §3%§ = "product-selected";
                                                                     while(true)
                                                                     {
                                                                        §;!#§ = "product-buy-selected";
                                                                        continue loop12;
                                                                        addr371:
                                                                        while(!(_loc1_ && _loc1_))
                                                                        {
                                                                           §5!a§ = §;!#§;
                                                                           while(true)
                                                                           {
                                                                              § g§ = §`,§;
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
                                                                              §4R§ = "generic-clicked";
                                                                              continue loop11;
                                                                           }
                                                                        }
                                                                     }
                                                                     addr146:
                                                                     if(_loc1_ && §'N§)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     sSample1Percent = false;
                                                                     loop49:
                                                                     while(!(_loc1_ && _loc2_))
                                                                     {
                                                                        §&D§ = [];
                                                                        loop50:
                                                                        while(_loc2_)
                                                                        {
                                                                           §[+§ = 0;
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
                                                                                 §3;§ = "brag-clicked";
                                                                                 while(true)
                                                                                 {
                                                                                    §^!-§ = "friend-clicked";
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
                                                                                             if(_loc1_ && §'N§)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr146);
                                                                                             addr47:
                                                                                             if(_loc1_ && §'N§)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                addr207:
                                                                                                while(!(_loc1_ && _loc2_))
                                                                                                {
                                                                                                   SAMPLE_100_PERCENT_CATEGORIES = [§-G§];
                                                                                                   continue loop46;
                                                                                                }
                                                                                                while(!(_loc1_ && §'N§))
                                                                                                {
                                                                                                   if(_loc1_)
                                                                                                   {
                                                                                                      continue loop18;
                                                                                                   }
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      addr311:
                                                                                                      if(!(_loc2_ || §'N§))
                                                                                                      {
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                      §'!_§ = "download-failed";
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §4s§ = "3rd-party-cookies-missing";
                                                                                                         continue loop14;
                                                                                                         addr70:
                                                                                                         if(_loc2_ || _loc1_)
                                                                                                         {
                                                                                                            if(!_loc1_)
                                                                                                            {
                                                                                                               §@!6§ = 0;
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
                                                                                                                              §[!M§ = 0;
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
                                                                                                                        SAMPLE_1_PERCENT_FLASH_ACTIONS = [§9!e§,§`q§];
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
                                                                                                         §9'§ = "share-completed";
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
                                                                                                §!a§ = "friend-count";
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
                                                                                                §2M§ = "set";
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
                                                                                 §7o§ = "brag-shown";
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
                                                                              SAMPLE_1_PERCENT_CATEGORIES = [§;4§,§4q§,§9!F§,§ !!§,§1!q§,§^!=§,§^I§,§-!v§,§`!b§,§?w§,§%!$§];
                                                                              §§goto(addr207);
                                                                           }
                                                                           §§goto(addr63);
                                                                        }
                                                                        while(_loc2_)
                                                                        {
                                                                           §4!L§ = "flash-var-missing";
                                                                           §§goto(addr259);
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §6^§ = "advertisement-click";
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
                                          §^!=§ = "external-pause";
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
      
      public function §'N§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §!!V§() : void
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
      
      public static function §7!=§(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §var §(§'W§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
         }
         var _loc3_:URLLoader = new URLLoader();
         if(_loc4_)
         {
            _loc3_.load(§ v§.§<N§(AngryBirdsFP11.§8!`§ + "/clienterror/" + param1));
         }
      }
      
      public static function §var §(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§!7§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS));
         if(!_loc6_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         if(_loc5_)
         {
            §'W§.trackSampledEvent(_loc4_,§0!T§,param1,param2,param3);
         }
      }
      
      public static function §5H§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§<!-§());
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            §-!5§(§;4§,param1,param2,0);
            do
            {
               §-!5§(§4q§,param2,param1,0);
            }
            while(!(_loc4_ || param2));
            
         }
      }
      
      public static function §,!y§(param1:Array, param2:String, param3:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         if(_loc5_ || §'N§)
         {
            if(enabled)
            {
               loop0:
               do
               {
                  §§push(§+o§(param1));
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
                        §-!5§(§9!F§,_loc4_,param2,param3);
                        continue loop0;
                     }
                  }
                  §§goto(addr78);
               }
               while(do
               {
                  §-!5§(§ !!§,param2,_loc4_,param3);
               }
               while(_loc6_);
               , !_loc5_);
               
            }
            return;
         }
         §§goto(addr88);
      }
      
      public static function §1%§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:* = null;
         if(_loc8_ || param3)
         {
            §§push(§&D§);
            if(!_loc7_)
            {
               if(§§pop().indexOf(param2) >= 0)
               {
                  if(_loc8_)
                  {
                     §§goto(addr36);
                  }
               }
               §§push(§&D§);
            }
            var _loc5_:* = §§pop().length == 0;
            if(_loc8_)
            {
               §&D§.push(param2);
               loop0:
               while(true)
               {
                  §§push(param3);
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§push(§'W§.ACTION_GPU_FPS_REPORT);
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
                                          if(_loc8_ || §'N§)
                                          {
                                             if(_loc8_ || param2)
                                             {
                                                while(true)
                                                {
                                                   §§push(§'N§.§;"§);
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
                                                                  if(!(_loc7_ && §'N§))
                                                                  {
                                                                     addr80:
                                                                     if(!_loc8_)
                                                                     {
                                                                        break;
                                                                        addr98:
                                                                     }
                                                                     §var §(_loc6_,param1.toString(),param1);
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
                                                               §-!5§(§1!q§,_loc6_,param2,param1);
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
      
      public static function dynamic(param1:String, param2:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            var _loc3_:*;
            §§push((_loc3_ = §§findproperty(§[+§)).§[+§);
            if(_loc6_ || _loc3_)
            {
               §§push(§§pop() + 1);
            }
            var _loc4_:* = §§pop();
            if(_loc6_)
            {
               _loc3_.§[+§ = _loc4_;
            }
            if(!(_loc5_ && param2))
            {
               addr71:
               §-!5§(§^I§,§6!?§,param1,param2);
            }
            return;
         }
         §§goto(addr71);
      }
      
      public static function §=!C§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §-!5§(§^I§,§'!q§,null,0);
         }
      }
      
      public static function §-!_§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            var _loc1_:*;
            §§push((_loc1_ = §§findproperty(§0!5§)).§0!5§);
            if(!_loc3_)
            {
               §§push(§§pop() + 1);
            }
            var _loc2_:* = §§pop();
            if(_loc4_)
            {
               _loc1_.§0!5§ = _loc2_;
            }
            if(!(_loc3_ && §'N§))
            {
               §[!M§ = §<!-§();
            }
         }
         do
         {
            §-!5§(§^!=§,§7!s§,§0!5§.toString(),§[!M§);
         }
         while(_loc3_);
         
      }
      
      public static function §3!j§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §-!5§(§^!=§,§6!]§,"",§<!-§(§[!M§));
         }
      }
      
      public static function §'j§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §'N§)
         {
            if(!§,!$§)
            {
               if(_loc2_)
               {
                  addr38:
                  §-!5§(§-!v§,§?u§,null,0);
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      public static function §"!W§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(!§,!$§)
            {
               if(_loc2_ || §'N§)
               {
                  §-!5§(§-!v§,§3%§,param1,0);
               }
            }
         }
      }
      
      public static function §>!K§(param1:String, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            if(!§,!$§)
            {
               if(!(_loc4_ && _loc3_))
               {
                  addr42:
                  §-!5§(§-!v§,§;!#§,param1,param2,false);
               }
            }
            return;
         }
         §§goto(addr42);
      }
      
      public static function §^"§(param1:String, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(!§,!$§)
            {
               if(!_loc3_)
               {
                  addr23:
                  §-!5§(§-!v§,§`,§,param1,param2,false);
               }
            }
            return;
         }
         §§goto(addr23);
      }
      
      public static function §;2§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §-!5§(§`!b§,§7o§,param1,0);
         }
      }
      
      public static function §=!k§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §-!5§(§`!b§,§3;§,param1,0);
         }
      }
      
      public static function §9!a§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §-!5§(§?w§,§^!-§,null,0);
         }
      }
      
      public static function §,z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §-!5§(§?w§,§4R§,null,0);
         }
      }
      
      public static function §4j§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §-!5§(§%!$§,§+!b§,null,0);
         }
      }
      
      public static function §<u§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §-!5§(§%!$§,§2M§,null,0);
         }
      }
      
      public static function §3!e§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §-!5§(§%!$§,§>!v§,param1,0);
         }
      }
      
      public static function §<=§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §-!5§(§%!$§,§^!,§,null,0);
         }
      }
      
      public static function §+!w§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §-!5§(§%!$§,§9'§,null,0);
         }
      }
      
      public static function §0[§(param1:String, param2:int = 0) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!§,!$§)
            {
               if(_loc3_)
               {
                  addr22:
                  §-!5§(§%!$§,§5!a§,param1,param2,false);
               }
            }
            return;
         }
         §§goto(addr22);
      }
      
      public static function §47§(param1:String, param2:int = 0) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            if(!§,!$§)
            {
               if(!_loc4_)
               {
                  §-!5§(§%!$§,§ g§,param1,param2,false);
               }
            }
         }
      }
      
      public static function §`!]§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §-!5§(§!d§,§'!_§,param1,0);
         }
      }
      
      public static function §"!@§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §-!5§(§!d§,§4s§,null,0);
         }
      }
      
      public static function §-4§(param1:String) : void
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
                     §-!5§(§!d§,§@!v§,param1,0);
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
      
      public static function §>!1§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §-!5§(§!d§,§4!L§,param1,0);
         }
      }
      
      public static function §,!j§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §-!5§(§#1§,§!a§,param1.toString(),param1);
         }
      }
      
      public static function §`I§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §-!5§(§#1§,§6^§,param1,0);
         }
      }
      
      public static function §4!u§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && §'N§))
         {
            §-!5§(§-G§,param1,"",0,false);
         }
      }
      
      private static function §-!5§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
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
                  §§push(§3!&§);
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
                              if(_loc8_ && §'N§)
                              {
                                 continue;
                              }
                              if(!(_loc8_ && §'N§))
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
                                 §§push(§!7§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES));
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
      
      private static function §!7§(param1:String, param2:Array, param3:Array) : String
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
      
      private static function §+o§(param1:Array) : String
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
                     if(_loc8_ || §'N§)
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
      
      private static function §<!-§(param1:int = 0) : int
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
