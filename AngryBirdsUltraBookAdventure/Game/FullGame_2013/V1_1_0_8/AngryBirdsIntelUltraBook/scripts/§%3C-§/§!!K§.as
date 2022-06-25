package §<-§
{
   import §-^§.§7!6§;
   import flash.net.URLLoader;
   import flash.utils.getTimer;
   
   public class §!!K§ extends §5Z§
   {
      
      private static const §,!S§:Boolean;
      
      private static const §,g§:String = "powerup-used";
      
      private static const §8h§:String = "level-powerup-used";
      
      private static const §7!;§:String;
      
      private static const §"W§:String;
      
      private static const §&7§:String = "framerate";
      
      private static const §'+§:String = "external-pause";
      
      private static const §7!H§:String = "gift";
      
      private static const §3!§:String = "shop";
      
      private static const §5R§:String = "brag";
      
      private static const §6`§:String = "invite";
      
      private static const §5!a§:String = "avatar";
      
      private static const §?!f§:String = "warning";
      
      private static const §4!"§:String = "user-statistics";
      
      private static const § y§:String = "error";
      
      private static const § 1§:String = "paused";
      
      private static const §91§:String = "resumed";
      
      private static const §<!H§:String = "gift-claimed";
      
      private static const §%!e§:String = "campaign-gift-claimed";
      
      private static const §"!0§:String = "opened";
      
      private static const §]!l§:String = "product-selected";
      
      private static const §&;§:String = "product-buy-selected";
      
      private static const §<b§:String = "product-buy-completed";
      
      private static const §&!2§:String = "brag-shown";
      
      private static const §3Z§:String = "brag-clicked";
      
      private static const §3!U§:String = "friend-clicked";
      
      private static const §%S§:String = "generic-clicked";
      
      private static const §9V§:String = "opened";
      
      private static const §-!1§:String = "set";
      
      private static const §;d§:String = "product-set";
      
      private static const §28§:String = "product-buy-selected";
      
      private static const §+h§:String = "product-buy-completed";
      
      private static const §,&§:String = "share-clicked";
      
      private static const §=!Y§:String = "share-completed";
      
      private static const §-!3§:String;
      
      private static const §"!B§:String;
      
      private static const §%!z§:String = "download-failed";
      
      private static const §%#§:String = "3rd-party-cookies-missing";
      
      private static const §9q§:String = "invalid-level";
      
      private static const §5!§:String = "flash-var-missing";
      
      private static const §?g§:String = "friend-count";
      
      private static const §#S§:String = "advertisement-click";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array;
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array;
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §4!]§:Array;
      
      private static var §&f§:int = 0;
      
      private static var §<!e§:int = 0;
      
      private static var §%!X§:int = 0;
      
      private static var §+!X§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §!!K§)
         {
            §,!S§ = AngryBirdsFP11.§?C§;
            loop0:
            while(true)
            {
               §,g§ = "powerup-used";
               loop1:
               while(true)
               {
                  §8h§ = "level-powerup-used";
                  loop2:
                  while(true)
                  {
                     §§push(§§findproperty(§7!;§));
                     §§push("powerup-");
                     if(_loc2_ || §!!K§)
                     {
                        §§push(§§pop() + §0O§);
                     }
                     §§pop().§7!;§ = §§pop();
                     loop3:
                     while(true)
                     {
                        §"W§ = §0O§ + "-powerup";
                        while(true)
                        {
                           §&7§ = "framerate";
                           while(_loc2_)
                           {
                              §'+§ = "external-pause";
                              while(true)
                              {
                                 §7!H§ = "gift";
                                 while(true)
                                 {
                                    §3!§ = "shop";
                                    while(true)
                                    {
                                       §5R§ = "brag";
                                       while(true)
                                       {
                                          §6`§ = "invite";
                                          while(true)
                                          {
                                             §5!a§ = "avatar";
                                             while(true)
                                             {
                                                §?!f§ = "warning";
                                                while(true)
                                                {
                                                   §4!"§ = "user-statistics";
                                                   loop13:
                                                   while(true)
                                                   {
                                                      § y§ = "error";
                                                      while(true)
                                                      {
                                                         § 1§ = "paused";
                                                         continue loop1;
                                                         addr489:
                                                         while(!(_loc1_ && _loc2_))
                                                         {
                                                            §<!H§ = "gift-claimed";
                                                            continue loop13;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             if(_loc1_ && _loc1_)
                                             {
                                                continue;
                                             }
                                             §9q§ = "invalid-level";
                                             §§goto(addr310);
                                          }
                                       }
                                    }
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       continue loop3;
                                    }
                                 }
                                 if(_loc1_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 §#S§ = "advertisement-click";
                                 §§goto(addr260);
                              }
                              if(!(_loc1_ && _loc2_))
                              {
                                 continue loop2;
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr362);
      }
      
      public function §!!K§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §`!m§() : void
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
                  addr75:
                  while(true)
                  {
                  }
                  addr60:
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  addr19:
                  return;
                  addr67:
               }
            }
            for(; Math.random() <= 0.01; §§goto(addr75))
            {
               if(_loc1_)
               {
                  if(!(_loc1_ || _loc2_))
                  {
                     continue;
                  }
                  sSample1Percent = true;
               }
               §§goto(addr60);
            }
            §§goto(addr19);
         }
         §§goto(addr67);
      }
      
      public static function §]!M§(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            §&!v§(§5Z§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
         }
         var _loc3_:URLLoader = new URLLoader();
         if(!_loc5_)
         {
            _loc3_.load(§7!6§.§7V§(AngryBirdsFP11.§[!S§ + "/clienterror/" + param1));
         }
      }
      
      public static function §&!v§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§4b§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS));
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         if(_loc5_)
         {
            §5Z§.trackSampledEvent(_loc4_,§^!u§,param1,param2,param3);
         }
      }
      
      public static function §[v§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§8!<§());
         if(_loc5_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && param1))
         {
            §89§(§,g§,param1,param2,0);
            do
            {
               §89§(§8h§,param2,param1,0);
            }
            while(_loc4_ && _loc3_);
            
         }
      }
      
      public static function §9s§(param1:Array, param2:String, param3:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         if(!_loc6_)
         {
            if(enabled)
            {
               if(!(_loc6_ && §!!K§))
               {
                  §§push(§=S§(param1));
                  if(_loc5_ || param2)
                  {
                     §§push(§§pop());
                     if(!(_loc6_ && param1))
                     {
                        addr83:
                        §§push(_loc4_ = §§pop());
                     }
                     if(§§pop())
                     {
                        if(!_loc6_)
                        {
                           addr88:
                           §89§(§7!;§,_loc4_,param2,param3);
                           do
                           {
                              §89§(§"W§,param2,_loc4_,param3);
                           }
                           while(!_loc5_);
                           
                           addr22:
                           return;
                           addr94:
                        }
                        §§goto(addr94);
                     }
                     §§goto(addr22);
                  }
                  §§goto(addr83);
               }
            }
            §§goto(addr22);
         }
         §§goto(addr88);
      }
      
      public static function §&U§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:* = null;
         if(_loc8_ || param3)
         {
            §§push(§4!]§);
            if(_loc8_)
            {
               if(§§pop().indexOf(param2) >= 0)
               {
                  if(!(_loc7_ && param1))
                  {
                     return;
                  }
                  addr42:
                  §§push(§4!]§);
               }
               §§goto(addr42);
            }
            var _loc5_:* = §§pop().length == 0;
            if(!(_loc7_ && param1))
            {
               §4!]§.push(param2);
               while(true)
               {
                  §§push(param3);
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§push(§5Z§.ACTION_GPU_FPS_REPORT);
                        loop2:
                        while(true)
                        {
                           if(!_loc7_)
                           {
                              _loc6_ = §§pop();
                              while(true)
                              {
                                 §§push(param4);
                                 loop4:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       continue;
                                    }
                                    while(true)
                                    {
                                       §§push(§!!K§.§-!3§);
                                       if(!(_loc8_ || §!!K§))
                                       {
                                          continue loop2;
                                       }
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop());
                                          continue loop2;
                                       }
                                       addr196:
                                       while(true)
                                       {
                                          if(_loc8_)
                                          {
                                             _loc6_ = §§pop();
                                             while(!(_loc8_ || §!!K§))
                                             {
                                             }
                                             addr156:
                                             continue loop4;
                                             addr199:
                                          }
                                          else
                                          {
                                             addr213:
                                          }
                                          while(true)
                                          {
                                             _loc6_ = §§pop();
                                          }
                                          while(true)
                                          {
                                             §§push(param4);
                                             continue loop1;
                                          }
                                       }
                                    }
                                 }
                                 if(_loc8_ || param1)
                                 {
                                    return;
                                 }
                              }
                           }
                           §§goto(addr195);
                        }
                     }
                     §§goto(addr210);
                  }
               }
            }
            §§goto(addr128);
         }
         §§goto(addr42);
      }
      
      public static function §+[§(param1:String, param2:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            var _loc3_:*;
            §§push((_loc3_ = §§findproperty(§&f§)).§&f§);
            if(!_loc6_)
            {
               §§push(§§pop() + 1);
            }
            var _loc4_:* = §§pop();
            if(_loc5_ || _loc3_)
            {
               _loc3_.§&f§ = _loc4_;
            }
            if(_loc5_ || §!!K§)
            {
               §89§(§7!H§,§<!H§,param1,param2);
            }
         }
      }
      
      public static function §@!S§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §89§(§7!H§,§%!e§,null,0);
         }
      }
      
      public static function §=E§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && §!!K§))
         {
            var _loc1_:*;
            §§push((_loc1_ = §§findproperty(§<!e§)).§<!e§);
            if(!_loc4_)
            {
               §§push(§§pop() + 1);
            }
            var _loc2_:* = §§pop();
            if(!(_loc4_ && _loc1_))
            {
               _loc1_.§<!e§ = _loc2_;
            }
            if(!(_loc4_ && §!!K§))
            {
               §%!X§ = §8!<§();
               do
               {
                  §89§(§'+§,§ 1§,§<!e§.toString(),§%!X§);
               }
               while(_loc4_ && §!!K§);
               
               addr70:
            }
            return;
         }
         §§goto(addr70);
      }
      
      public static function §2!k§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §89§(§'+§,§91§,"",§8!<§(§%!X§));
         }
      }
      
      public static function §6!j§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §!!K§)
         {
            if(!§,!S§)
            {
               if(_loc1_ || _loc2_)
               {
                  addr42:
                  §89§(§3!§,§"!0§,null,0);
               }
            }
            return;
         }
         §§goto(addr42);
      }
      
      public static function §1!o§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!§,!S§)
            {
               if(_loc3_ || §!!K§)
               {
                  addr38:
                  §89§(§3!§,§]!l§,param1,0);
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      public static function §if §(param1:String, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(!§,!S§)
            {
               if(!_loc3_)
               {
                  §89§(§3!§,§&;§,param1,param2,false);
               }
            }
         }
      }
      
      public static function §4"§(param1:String, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(!§,!S§)
            {
               if(_loc4_ || param1)
               {
                  addr38:
                  §89§(§3!§,§<b§,param1,param2,false);
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      public static function §<]§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §89§(§5R§,§&!2§,param1,0);
         }
      }
      
      public static function §-!=§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §89§(§5R§,§3Z§,param1,0);
         }
      }
      
      public static function §8'§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §!!K§))
         {
            §89§(§6`§,§3!U§,null,0);
         }
      }
      
      public static function §0!'§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §89§(§6`§,§%S§,null,0);
         }
      }
      
      public static function §+!F§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §89§(§5!a§,§9V§,null,0);
         }
      }
      
      public static function §+!@§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §89§(§5!a§,§-!1§,null,0);
         }
      }
      
      public static function §-G§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §89§(§5!a§,§;d§,param1,0);
         }
      }
      
      public static function §-z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §89§(§5!a§,§,&§,null,0);
         }
      }
      
      public static function §'!s§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §!!K§)
         {
            §89§(§5!a§,§=!Y§,null,0);
         }
      }
      
      public static function §^!X§(param1:String, param2:int = 0) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!§,!S§)
            {
               if(_loc3_ || _loc3_)
               {
                  §89§(§5!a§,§28§,param1,param2,false);
               }
            }
         }
      }
      
      public static function §,! §(param1:String, param2:int = 0) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!§,!S§)
            {
               if(_loc3_)
               {
                  addr22:
                  §89§(§5!a§,§+h§,param1,param2,false);
               }
            }
            return;
         }
         §§goto(addr22);
      }
      
      public static function §<J§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §89§(§?!f§,§%!z§,param1,0);
         }
      }
      
      public static function §%!,§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §!!K§))
         {
            §89§(§?!f§,§%#§,null,0);
         }
      }
      
      public static function §4R§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(§§pop() != null)
            {
               §§push(param1);
               if(!_loc3_)
               {
                  continue;
               }
               if(§§pop().length == 0)
               {
                  while(true)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        §§push("[empty]");
                        if(!_loc2_)
                        {
                           param1 = §§pop();
                           loop2:
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 break loop0;
                              }
                              while(true)
                              {
                                 continue loop2;
                              }
                           }
                        }
                        while(true)
                        {
                           param1 = §§pop();
                        }
                        addr83:
                     }
                     while(true)
                     {
                     }
                     if(_loc2_)
                     {
                        continue;
                     }
                     §§goto(addr55);
                  }
               }
               §§goto(addr24);
            }
            while(true)
            {
               §§goto(addr83);
            }
         }
         §§goto(addr78);
      }
      
      public static function §1,§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §89§(§?!f§,§5!§,param1,0);
         }
      }
      
      public static function §5!%§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §89§(§4!"§,§?g§,param1.toString(),param1);
         }
      }
      
      public static function §%$§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && §!!K§))
         {
            §89§(§4!"§,§#S§,param1,0);
         }
      }
      
      public static function §<3§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §89§(§ y§,param1,"",0,false);
         }
      }
      
      private static function §89§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:* = null;
         if(_loc7_ || param1)
         {
            if(enabled)
            {
               loop0:
               do
               {
                  §§push(§``§);
                  loop1:
                  while(true)
                  {
                     _loc6_ = §§pop();
                     do
                     {
                        if(param5)
                        {
                           if(_loc7_)
                           {
                              §§push(§4b§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES));
                              if(!(_loc8_ && param3))
                              {
                                 if(!_loc7_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(§§pop());
                              }
                              _loc6_ = §§pop();
                              addr97:
                              while(true)
                              {
                              }
                              addr97:
                           }
                           §§goto(addr97);
                        }
                        while(true)
                        {
                           trackSampledEvent(_loc6_,param1,param2,param3,param4);
                           if(_loc7_)
                           {
                              break;
                           }
                           §§goto(addr97);
                        }
                     }
                     while(!(_loc7_ || param3));
                     
                     continue loop0;
                  }
               }
               while(_loc8_ && param2);
               
            }
            return;
         }
         §§goto(addr97);
      }
      
      private static function §4b§(param1:String, param2:Array, param3:Array) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(param3);
            loop0:
            while(true)
            {
               §§push(param1);
               addr64:
               do
               {
                  if(§§pop().indexOf(§§pop()) < 0)
                  {
                     continue loop0;
                  }
               }
               while(_loc4_ && §!!K§);
               
               return TRACKING_FUNCTION_1_PERCENT;
            }
         }
         §§goto(addr76);
      }
      
      private static function §=S§(param1:Array) : String
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = null;
         if(_loc8_ || _loc3_)
         {
            §§push(param1);
            if(_loc8_)
            {
               §§push(§§pop() == null);
               if(_loc8_ || param1)
               {
                  if(!§§pop())
                  {
                     if(_loc8_ || _loc2_)
                     {
                        §§pop();
                        if(_loc8_)
                        {
                           addr55:
                           if(param1.length == 0)
                           {
                              if(!_loc7_)
                              {
                                 §§goto(addr58);
                              }
                           }
                        }
                        var _loc2_:* = "";
                        var _loc3_:Array = param1.concat();
                        if(_loc8_ || param1)
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
                                       if(_loc8_ || _loc3_)
                                       {
                                          §§push(§§pop());
                                       }
                                       if(!(_loc8_ || _loc3_))
                                       {
                                          break loop2;
                                       }
                                       if(!_loc7_)
                                       {
                                          _loc2_ = §§pop();
                                          if(_loc8_ || §!!K§)
                                          {
                                             if(!(_loc8_ || §!!K§))
                                             {
                                                break;
                                             }
                                             if(!_loc8_)
                                             {
                                                break loop3;
                                             }
                                             if(false)
                                             {
                                                continue loop3;
                                             }
                                          }
                                          continue loop0;
                                          addr169:
                                       }
                                    }
                                    §§push(_loc2_);
                                    if(_loc7_)
                                    {
                                       break loop2;
                                    }
                                    continue loop1;
                                 }
                              }
                              addr168:
                              _loc2_ = §§pop();
                              §§goto(addr169);
                           }
                        }
                        return _loc2_;
                     }
                  }
               }
            }
            §§goto(addr55);
         }
         addr58:
         return null;
      }
      
      private static function §8!<§(param1:int = 0) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(getTimer() / 1000);
         if(!_loc3_)
         {
            return §§pop() - param1;
         }
      }
   }
}
