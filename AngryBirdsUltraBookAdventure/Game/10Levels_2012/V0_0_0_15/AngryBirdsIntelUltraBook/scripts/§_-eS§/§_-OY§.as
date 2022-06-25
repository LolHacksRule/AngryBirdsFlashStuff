package §_-eS§
{
   import §_-Hb§.§_-P-§;
   import flash.net.URLLoader;
   import flash.utils.getTimer;
   
   public class §_-OY§ extends §_-Za§
   {
      
      private static const §_-na§:Boolean;
      
      private static const §_-2v§:String = "powerup-used";
      
      private static const §_-bt§:String = "level-powerup-used";
      
      private static const §_-Zp§:String;
      
      private static const §_-Qw§:String;
      
      private static const §_-dC§:String = "framerate";
      
      private static const §_-KP§:String = "external-pause";
      
      private static const §_-6p§:String = "gift";
      
      private static const §_-5d§:String = "shop";
      
      private static const §_-1p§:String = "brag";
      
      private static const §_-eN§:String = "invite";
      
      private static const §_-Ja§:String = "avatar";
      
      private static const §_-0E2§:String = "warning";
      
      private static const §_-z§:String = "user-statistics";
      
      private static const §_-wM§:String = "error";
      
      private static const §_-GN§:String = "paused";
      
      private static const §_-zh§:String = "resumed";
      
      private static const §_-05D§:String = "gift-claimed";
      
      private static const §_-39§:String = "campaign-gift-claimed";
      
      private static const §_-bB§:String = "opened";
      
      private static const §_-L-§:String = "product-selected";
      
      private static const §_-F4§:String = "product-buy-selected";
      
      private static const §_-Wd§:String = "product-buy-completed";
      
      private static const §_-VV§:String = "brag-shown";
      
      private static const §_-09w§:String = "brag-clicked";
      
      private static const §_-3§:String = "friend-clicked";
      
      private static const §_-jP§:String = "generic-clicked";
      
      private static const §_-XK§:String = "opened";
      
      private static const §_-0FI§:String = "set";
      
      private static const §_-EI§:String = "product-set";
      
      private static const §_-Bm§:String = "product-buy-selected";
      
      private static const §_-id§:String = "product-buy-completed";
      
      private static const §_-bA§:String = "share-clicked";
      
      private static const §_-07L§:String = "share-completed";
      
      private static const §_-A3§:String;
      
      private static const §_-UQ§:String;
      
      private static const §_-jB§:String = "download-failed";
      
      private static const §_-05g§:String = "3rd-party-cookies-missing";
      
      private static const §_-kx§:String = "invalid-level";
      
      private static const §_-B3§:String = "flash-var-missing";
      
      private static const §_-5A§:String = "friend-count";
      
      private static const §_-07G§:String = "advertisement-click";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array;
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array;
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §_-bp§:Array;
      
      private static var §_-3g§:int = 0;
      
      private static var §_-va§:int = 0;
      
      private static var §_-64§:int = 0;
      
      private static var §_-i0§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §_-na§ = AngryBirdsFP11.§_-LI§;
            loop0:
            while(true)
            {
               §_-2v§ = "powerup-used";
               loop1:
               while(true)
               {
                  §_-bt§ = "level-powerup-used";
                  while(true)
                  {
                     §§push(§§findproperty(§_-Zp§));
                     §§push("powerup-");
                     if(!_loc1_)
                     {
                        §§push(§§pop() + §_-yA§);
                     }
                     §§pop().§_-Zp§ = §§pop();
                     while(true)
                     {
                        §_-Qw§ = §_-yA§ + "-powerup";
                        loop4:
                        while(true)
                        {
                           §_-dC§ = "framerate";
                           loop5:
                           while(true)
                           {
                              §_-KP§ = "external-pause";
                              loop6:
                              while(true)
                              {
                                 §_-6p§ = "gift";
                                 loop7:
                                 while(true)
                                 {
                                    §_-5d§ = "shop";
                                    loop8:
                                    while(true)
                                    {
                                       §_-1p§ = "brag";
                                       while(!_loc1_)
                                       {
                                          §_-eN§ = "invite";
                                          loop10:
                                          while(true)
                                          {
                                             §_-Ja§ = "avatar";
                                             while(true)
                                             {
                                                §_-0E2§ = "warning";
                                                addr498:
                                                addr277:
                                                while(true)
                                                {
                                                   §_-z§ = "user-statistics";
                                                   addr493:
                                                   while(true)
                                                   {
                                                      §_-wM§ = "error";
                                                      while(true)
                                                      {
                                                         §_-GN§ = "paused";
                                                         continue loop4;
                                                         addr459:
                                                         while(!(_loc1_ && §_-OY§))
                                                         {
                                                            §_-39§ = "campaign-gift-claimed";
                                                            continue loop6;
                                                         }
                                                      }
                                                   }
                                                }
                                                if(_loc1_ && §_-OY§)
                                                {
                                                   continue;
                                                }
                                                §_-B3§ = "flash-var-missing";
                                                loop40:
                                                while(_loc2_)
                                                {
                                                   §_-5A§ = "friend-count";
                                                   loop41:
                                                   while(true)
                                                   {
                                                      §_-07G§ = "advertisement-click";
                                                      loop42:
                                                      while(true)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            addr236:
                                                            if(!(_loc1_ && _loc1_))
                                                            {
                                                               SAMPLE_1_PERCENT_FLASH_ACTIONS = [§_-ku§,§_-yA§];
                                                               loop43:
                                                               while(true)
                                                               {
                                                                  if(_loc2_ || §_-OY§)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        SAMPLE_100_PERCENT_FLASH_ACTIONS = [ACTION_APPLICATION_CRASH,§_-5v§,§_-j2§];
                                                                        loop44:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              continue loop40;
                                                                           }
                                                                           if(_loc1_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           SAMPLE_1_PERCENT_CATEGORIES = [§_-2v§,§_-bt§,§_-Zp§,§_-Qw§,§_-dC§,§_-KP§,§_-6p§,§_-5d§,§_-1p§,§_-eN§,§_-Ja§];
                                                                           loop45:
                                                                           while(true)
                                                                           {
                                                                              SAMPLE_100_PERCENT_CATEGORIES = [§_-wM§];
                                                                              loop46:
                                                                              while(_loc2_)
                                                                              {
                                                                                 FULL_SCREEN = "-full-screen";
                                                                                 while(!_loc1_)
                                                                                 {
                                                                                    sSample10Percent = false;
                                                                                    loop48:
                                                                                    while(true)
                                                                                    {
                                                                                       sSample1Percent = false;
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             addr151:
                                                                                             if(!(_loc1_ && §_-OY§))
                                                                                             {
                                                                                                addr158:
                                                                                                if(_loc1_ && _loc1_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §_-bp§ = [];
                                                                                                continue loop48;
                                                                                             }
                                                                                             loop34:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §_-A3§ = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
                                                                                                   continue loop5;
                                                                                                }
                                                                                                addr379:
                                                                                                while(_loc2_)
                                                                                                {
                                                                                                   §_-Bm§ = §_-F4§;
                                                                                                   loop31:
                                                                                                   while(_loc2_)
                                                                                                   {
                                                                                                      §_-id§ = §_-Wd§;
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            if(_loc1_)
                                                                                                            {
                                                                                                               break;
                                                                                                               addr347:
                                                                                                            }
                                                                                                            §_-bA§ = "share-clicked";
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §_-07L§ = "share-completed";
                                                                                                                  continue loop34;
                                                                                                               }
                                                                                                               continue loop31;
                                                                                                            }
                                                                                                            continue loop8;
                                                                                                         }
                                                                                                         addr394:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §_-jP§ = "generic-clicked";
                                                                                                            break loop46;
                                                                                                         }
                                                                                                         addr291:
                                                                                                         if(!(_loc2_ || §_-OY§))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         addr409:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §_-VV§ = "brag-shown";
                                                                                                            addr404:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §_-09w§ = "brag-clicked";
                                                                                                               break loop42;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr459);
                                                                                                   }
                                                                                                   continue loop7;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §_-EI§ = "product-set";
                                                                                                   §§goto(addr372);
                                                                                                }
                                                                                                addr372:
                                                                                             }
                                                                                             continue loop10;
                                                                                          }
                                                                                          continue loop44;
                                                                                          addr103:
                                                                                          if(!(_loc1_ && _loc1_))
                                                                                          {
                                                                                             continue loop45;
                                                                                          }
                                                                                       }
                                                                                       continue loop6;
                                                                                    }
                                                                                 }
                                                                                 continue loop41;
                                                                                 if(!(_loc1_ && _loc1_))
                                                                                 {
                                                                                    continue loop43;
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §_-XK§ = "opened";
                                                                                 §§goto(addr384);
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §_-jB§ = "download-failed";
                                                                           §§goto(addr312);
                                                                        }
                                                                        addr319:
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr404);
                                                               }
                                                               §§goto(addr493);
                                                            }
                                                            break;
                                                         }
                                                         continue loop5;
                                                         if(_loc1_ && §_-OY§)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr91);
                                                      }
                                                      while(true)
                                                      {
                                                         §_-3§ = "friend-clicked";
                                                         §§goto(addr394);
                                                         §§goto(addr236);
                                                      }
                                                   }
                                                }
                                                while(_loc2_)
                                                {
                                                   addr416:
                                                   if(!(_loc1_ && _loc2_))
                                                   {
                                                      §_-Wd§ = "product-buy-completed";
                                                      §§goto(addr409);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §_-05D§ = "gift-claimed";
                                                         §§goto(addr416);
                                                      }
                                                      addr471:
                                                   }
                                                   §§goto(addr459);
                                                }
                                                §§goto(addr428);
                                             }
                                          }
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     if(_loc2_ || _loc2_)
                     {
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr442);
      }
      
      public function §_-OY§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §_-Pc§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(Math.random() <= 0.1)
            {
               while(true)
               {
                  sSample10Percent = true;
                  addr80:
                  while(true)
                  {
                  }
               }
               addr77:
            }
            loop2:
            for(; Math.random() <= 0.01; §§goto(addr80))
            {
               if(!(_loc2_ && _loc1_))
               {
                  while(true)
                  {
                     sSample1Percent = true;
                  }
                  addr60:
               }
               while(true)
               {
                  if(_loc2_ && §_-OY§)
                  {
                     continue loop2;
                  }
                  if(!_loc2_)
                  {
                     break loop2;
                  }
                  §§goto(addr77);
               }
            }
            return;
         }
         §§goto(addr60);
      }
      
      public static function §_-05E§(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc3_)
         {
            §_-Ve§(§_-Za§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
         }
         var _loc3_:URLLoader = new URLLoader();
         if(_loc4_)
         {
            _loc3_.load(§_-P-§.§_-0Ak§(AngryBirdsFP11.§_-08Q§ + "/clienterror/" + param1));
         }
      }
      
      public static function §_-Ve§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§_-55§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS));
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         if(!_loc5_)
         {
            §_-Za§.trackSampledEvent(_loc4_,§_-042§,param1,param2,param3);
         }
      }
      
      public static function §_-nK§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§_-0C0§());
         if(_loc5_ || §_-OY§)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || param2)
         {
            §_-mK§(§_-2v§,param1,param2,0);
            do
            {
               §_-mK§(§_-bt§,param2,param1,0);
            }
            while(_loc4_ && param1);
            
         }
      }
      
      public static function §_-Zr§(param1:Array, param2:String, param3:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = null;
         if(!(_loc5_ && param1))
         {
            if(enabled)
            {
               if(!_loc5_)
               {
                  §§push(§_-09n§(param1));
                  if(_loc6_ || param2)
                  {
                     §§push(§§pop());
                     if(_loc6_)
                     {
                        addr79:
                        §§push(_loc4_ = §§pop());
                     }
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           §_-mK§(§_-Zp§,_loc4_,param2,param3);
                           do
                           {
                              §_-mK§(§_-Qw§,param2,_loc4_,param3);
                           }
                           while(!_loc6_);
                           
                           addr28:
                           return;
                           addr90:
                           addr51:
                        }
                        §§goto(addr90);
                     }
                     §§goto(addr28);
                  }
                  §§goto(addr79);
               }
            }
            §§goto(addr28);
         }
         §§goto(addr51);
      }
      
      public static function §_-7a§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:* = null;
         if(_loc8_ || param2)
         {
            §§push(§_-bp§);
            if(!_loc7_)
            {
               if(§§pop().indexOf(param2) >= 0)
               {
                  if(_loc8_ || param1)
                  {
                     §§goto(addr41);
                  }
               }
               §§push(§_-bp§);
            }
            var _loc5_:* = §§pop().length == 0;
            if(!_loc7_)
            {
               §_-bp§.push(param2);
               loop0:
               while(true)
               {
                  §§push(param3);
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§push(§_-Za§.ACTION_GPU_FPS_REPORT);
                        loop2:
                        while(true)
                        {
                           if(!(_loc7_ && param1))
                           {
                              if(!_loc7_)
                              {
                                 _loc6_ = §§pop();
                                 loop3:
                                 while(true)
                                 {
                                    §§push(param4);
                                    loop4:
                                    while(true)
                                    {
                                       if(_loc7_)
                                       {
                                          continue loop1;
                                       }
                                       if(!§§pop())
                                       {
                                          continue;
                                       }
                                       if(_loc8_ || param2)
                                       {
                                          if(!_loc8_)
                                          {
                                             continue loop3;
                                          }
                                          if(_loc8_ || param1)
                                          {
                                             continue loop0;
                                          }
                                          addr210:
                                          while(true)
                                          {
                                             §§push(§_-Za§.ACTION_CPU_FPS_REPORT);
                                          }
                                       }
                                       else
                                       {
                                          addr157:
                                          while(true)
                                          {
                                             continue loop4;
                                          }
                                          addr157:
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                              while(true)
                              {
                                 _loc6_ = §§pop();
                                 §§goto(addr214);
                              }
                           }
                           §§goto(addr198);
                        }
                        addr164:
                     }
                     §§goto(addr210);
                  }
               }
            }
            §§goto(addr107);
         }
         addr41:
      }
      
      public static function §_-TR§(param1:String, param2:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            var _loc3_:*;
            §§push((_loc3_ = §§findproperty(§_-3g§)).§_-3g§);
            if(_loc5_)
            {
               §§push(§§pop() + 1);
            }
            var _loc4_:* = §§pop();
            if(!(_loc6_ && param2))
            {
               _loc3_.§_-3g§ = _loc4_;
            }
            if(!_loc6_)
            {
               addr50:
               §_-mK§(§_-6p§,§_-05D§,param1,param2);
            }
            return;
         }
         §§goto(addr50);
      }
      
      public static function §_-uf§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §_-mK§(§_-6p§,§_-39§,null,0);
         }
      }
      
      public static function §_-U3§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            var _loc1_:*;
            §§push((_loc1_ = §§findproperty(§_-va§)).§_-va§);
            if(_loc4_ || _loc3_)
            {
               §§push(§§pop() + 1);
            }
            var _loc2_:* = §§pop();
            if(!_loc3_)
            {
               _loc1_.§_-va§ = _loc2_;
            }
            if(!_loc3_)
            {
               §_-64§ = §_-0C0§();
               do
               {
                  §_-mK§(§_-KP§,§_-GN§,§_-va§.toString(),§_-64§);
               }
               while(_loc3_ && §_-OY§);
               
            }
         }
      }
      
      public static function §_-cQ§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §_-OY§)
         {
            §_-mK§(§_-KP§,§_-zh§,"",§_-0C0§(§_-64§));
         }
      }
      
      public static function §_-gL§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!§_-na§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  §_-mK§(§_-5d§,§_-bB§,null,0);
               }
            }
         }
      }
      
      public static function §_-05o§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || §_-OY§)
         {
            if(!§_-na§)
            {
               if(!_loc2_)
               {
                  §_-mK§(§_-5d§,§_-L-§,param1,0);
               }
            }
         }
      }
      
      public static function §_-rk§(param1:String, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            if(!§_-na§)
            {
               if(_loc4_ || param1)
               {
                  §_-mK§(§_-5d§,§_-F4§,param1,param2,false);
               }
            }
         }
      }
      
      public static function §_-Zd§(param1:String, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || §_-OY§)
         {
            if(!§_-na§)
            {
               if(_loc3_ || §_-OY§)
               {
                  addr42:
                  §_-mK§(§_-5d§,§_-Wd§,param1,param2,false);
               }
            }
            return;
         }
         §§goto(addr42);
      }
      
      public static function §_-0Dd§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §_-mK§(§_-1p§,§_-VV§,param1,0);
         }
      }
      
      public static function §_-8t§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §_-mK§(§_-1p§,§_-09w§,param1,0);
         }
      }
      
      public static function §_-sn§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-mK§(§_-eN§,§_-3§,null,0);
         }
      }
      
      public static function §_-V4§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-mK§(§_-eN§,§_-jP§,null,0);
         }
      }
      
      public static function §_-T6§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §_-mK§(§_-Ja§,§_-XK§,null,0);
         }
      }
      
      public static function §_-LC§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-mK§(§_-Ja§,§_-0FI§,null,0);
         }
      }
      
      public static function §_-Mb§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || §_-OY§)
         {
            §_-mK§(§_-Ja§,§_-EI§,param1,0);
         }
      }
      
      public static function §_-0-X§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-mK§(§_-Ja§,§_-bA§,null,0);
         }
      }
      
      public static function §_-uI§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-mK§(§_-Ja§,§_-07L§,null,0);
         }
      }
      
      public static function §_-nm§(param1:String, param2:int = 0) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!§_-na§)
            {
               if(!_loc4_)
               {
                  §_-mK§(§_-Ja§,§_-Bm§,param1,param2,false);
               }
            }
         }
      }
      
      public static function §_-0h§(param1:String, param2:int = 0) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || §_-OY§)
         {
            if(!§_-na§)
            {
               if(!_loc3_)
               {
                  addr38:
                  §_-mK§(§_-Ja§,§_-id§,param1,param2,false);
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      public static function §_-ta§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §_-mK§(§_-0E2§,§_-jB§,param1,0);
         }
      }
      
      public static function §_-6V§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-mK§(§_-0E2§,§_-05g§,null,0);
         }
      }
      
      public static function §_-03O§(param1:String) : void
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
               if(!_loc2_)
               {
                  if(§§pop().length == 0)
                  {
                     if(!_loc2_)
                     {
                        if(_loc3_)
                        {
                           addr78:
                           §§push("[empty]");
                           if(!_loc2_)
                           {
                              param1 = §§pop();
                              addr73:
                              while(true)
                              {
                                 §§goto(addr34);
                              }
                              addr73:
                           }
                           while(true)
                           {
                              param1 = §§pop();
                              break loop0;
                           }
                           addr78:
                        }
                        while(true)
                        {
                           §§goto(addr78);
                        }
                     }
                     §§goto(addr73);
                  }
                  addr34:
                  while(true)
                  {
                     §_-mK§(§_-0E2§,§_-kx§,param1,0);
                     if(!_loc2_)
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        break loop0;
                     }
                     continue loop5;
                  }
               }
               continue;
               return;
            }
            while(true)
            {
               §§goto(addr78);
            }
         }
         §§goto(addr73);
      }
      
      public static function §_-Sp§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §_-mK§(§_-0E2§,§_-B3§,param1,0);
         }
      }
      
      public static function §_-Yx§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §_-mK§(§_-z§,§_-5A§,param1.toString(),param1);
         }
      }
      
      public static function §_-7i§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §_-mK§(§_-z§,§_-07G§,param1,0);
         }
      }
      
      public static function §_-ff§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §_-mK§(§_-wM§,param1,"",0,false);
         }
      }
      
      private static function §_-mK§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:* = null;
         if(_loc7_ || param1)
         {
            if(enabled)
            {
               loop0:
               while(true)
               {
                  §§push(§_-0Ai§);
                  loop1:
                  while(true)
                  {
                     _loc6_ = §§pop();
                     loop2:
                     while(true)
                     {
                        if(param5)
                        {
                           loop3:
                           while(!_loc8_)
                           {
                              §§push(§_-55§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES));
                              if(_loc7_ || param2)
                              {
                                 §§push(§§pop());
                              }
                              if(!_loc7_)
                              {
                                 continue loop1;
                              }
                              _loc6_ = §§pop();
                              loop4:
                              while(true)
                              {
                                 addr31:
                                 while(true)
                                 {
                                    trackSampledEvent(_loc6_,param1,param2,param3,param4);
                                    if(_loc7_ || param1)
                                    {
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                       continue loop3;
                                    }
                                    continue loop4;
                                 }
                                 if(!(_loc8_ && param3))
                                 {
                                    break loop2;
                                 }
                                 continue loop2;
                              }
                           }
                           continue loop0;
                        }
                        §§goto(addr31);
                     }
                     addr75:
                  }
               }
            }
            return;
         }
         §§goto(addr75);
      }
      
      private static function §_-55§(param1:String, param2:Array, param3:Array) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param3);
            loop0:
            while(true)
            {
               §§push(param1);
               addr76:
               addr79:
               while(§§pop().indexOf(§§pop()) < 0)
               {
                  continue loop0;
               }
               addr79:
               return TRACKING_FUNCTION_1_PERCENT;
            }
         }
         §§goto(addr73);
      }
      
      private static function §_-09n§(param1:Array) : String
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = null;
         if(_loc8_)
         {
            §§push(param1);
            if(_loc8_)
            {
               §§push(§§pop() == null);
               if(_loc8_ || §_-OY§)
               {
                  if(!§§pop())
                  {
                     if(!_loc7_)
                     {
                        §§pop();
                        §§goto(addr55);
                     }
                  }
               }
               if(§§pop())
               {
                  if(!_loc7_)
                  {
                     return null;
                  }
                  §§goto(addr55);
               }
               §§goto(addr55);
            }
            §§goto(addr47);
         }
         addr55:
         if(!(_loc7_ && _loc2_))
         {
            addr47:
            §§push(param1.length == 0);
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
                     while(§§pop().length <= 0)
                     {
                        §§push(_loc4_);
                        if(!(_loc7_ && param1))
                        {
                           if(!_loc8_)
                           {
                              continue loop1;
                           }
                           §§push(§§pop());
                        }
                        if(!(_loc8_ || §_-OY§))
                        {
                           break loop2;
                        }
                        if(_loc8_ || param1)
                        {
                           _loc2_ = §§pop();
                           if(_loc8_ || _loc3_)
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
                           addr169:
                        }
                     }
                     if(_loc8_ || param1)
                     {
                        §§push(_loc2_);
                        if(!(_loc7_ && §_-OY§))
                        {
                           §§push("-");
                           if(!(_loc7_ && param1))
                           {
                              §§push(§§pop() + _loc4_);
                           }
                           §§push(§§pop() + §§pop());
                           break loop2;
                        }
                        break loop2;
                     }
                     continue loop2;
                  }
               }
               _loc2_ = §§pop();
               §§goto(addr169);
            }
         }
         return _loc2_;
      }
      
      private static function §_-0C0§(param1:int = 0) : int
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
