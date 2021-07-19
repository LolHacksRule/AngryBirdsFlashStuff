package §!V§
{
   import flash.utils.getTimer;
   
   public class §>d§ extends §<!g§
   {
      
      private static const §6!"§:Boolean;
      
      private static const §?6§:String = "framerate";
      
      private static const §]8§:String = "warning";
      
      private static const §?H§:String = "user-statistics";
      
      private static const §+!^§:String = "error";
      
      private static const §8W§:String;
      
      private static const §+!e§:String;
      
      private static const §3G§:String = "download-failed";
      
      private static const §]x§:String = "invalid-level";
      
      private static const §[[§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array;
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array;
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var § K§:Array;
      
      public static const §<§:String = "level-selection";
      
      public static const §?+§:String = "level-failed";
      
      public static const §`O§:String = "cheetos-powerup-bought";
      
      public static const §&`§:String = "level-started-free";
      
      public static const §3B§:String = "level-started-premium";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §6!"§ = §5!9§.§1!#§;
            loop0:
            while(true)
            {
               §?6§ = "framerate";
               loop1:
               while(true)
               {
                  §]8§ = "warning";
                  loop2:
                  while(true)
                  {
                     §?H§ = "user-statistics";
                     loop3:
                     while(true)
                     {
                        §+!^§ = "error";
                        loop4:
                        while(true)
                        {
                           §8W§ = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
                           loop5:
                           while(true)
                           {
                              §+!e§ = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
                              loop6:
                              while(true)
                              {
                                 §3G§ = "download-failed";
                                 loop7:
                                 while(true)
                                 {
                                    §]x§ = "invalid-level";
                                    loop8:
                                    while(true)
                                    {
                                       §[[§ = "flash-var-missing";
                                       loop9:
                                       while(true)
                                       {
                                          SAMPLE_1_PERCENT_FLASH_ACTIONS = [];
                                          while(true)
                                          {
                                             SAMPLE_100_PERCENT_FLASH_ACTIONS = [ACTION_APPLICATION_CRASH,§^!A§,§#!b§,§`O§,§&`§,§3B§,§#S§,§0!=§,§?+§];
                                             while(true)
                                             {
                                                SAMPLE_1_PERCENT_CATEGORIES = [§?6§];
                                                addr177:
                                                while(_loc2_)
                                                {
                                                }
                                                addr144:
                                                continue loop1;
                                                while(_loc2_ || §>d§)
                                                {
                                                   continue loop0;
                                                }
                                             }
                                             loop22:
                                             while(!(_loc1_ && _loc2_))
                                             {
                                                §3B§ = "level-started-premium";
                                                if(_loc2_ || §>d§)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      addr37:
                                                      if(_loc1_ && §>d§)
                                                      {
                                                         while(true)
                                                         {
                                                            if(!_loc1_)
                                                            {
                                                               if(!_loc1_)
                                                               {
                                                                  if(!_loc1_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  addr171:
                                                                  while(true)
                                                                  {
                                                                     FULL_SCREEN = "-full-screen";
                                                                     while(!_loc1_)
                                                                     {
                                                                        sSample10Percent = false;
                                                                        if(!(_loc1_ && §>d§))
                                                                        {
                                                                           if(!_loc1_)
                                                                           {
                                                                              §&`§ = "level-started-free";
                                                                              continue loop22;
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                               }
                                                               §§goto(addr144);
                                                            }
                                                            §§goto(addr37);
                                                         }
                                                         continue loop2;
                                                         addr90:
                                                      }
                                                      if(_loc2_)
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            if(!_loc1_)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  return;
                                                               }
                                                               continue loop4;
                                                            }
                                                            continue loop6;
                                                         }
                                                         §§goto(addr177);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            § K§ = [];
                                                         }
                                                         addr139:
                                                      }
                                                      while(!_loc1_)
                                                      {
                                                         §<§ = "level-selection";
                                                      }
                                                      continue loop3;
                                                   }
                                                   addr69:
                                                   while(true)
                                                   {
                                                      if(!(_loc1_ && _loc1_))
                                                      {
                                                         §§goto(addr76);
                                                      }
                                                   }
                                                   continue loop8;
                                                   addr69:
                                                   while(!_loc1_)
                                                   {
                                                      continue loop5;
                                                      §§goto(addr69);
                                                   }
                                                   continue loop9;
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
               }
            }
         }
         while(true)
         {
            SAMPLE_100_PERCENT_CATEGORIES = [§+!^§];
            §§goto(addr171);
         }
      }
      
      public function §>d§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §-!L§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(Math.random() <= 0.1)
            {
               addr78:
               while(true)
               {
                  sSample10Percent = true;
                  addr81:
                  while(true)
                  {
                  }
               }
               addr78:
            }
            for(; Math.random() <= 0.01; §§goto(addr81))
            {
               if(!(_loc1_ && _loc2_))
               {
                  sSample1Percent = true;
               }
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               if(!(_loc1_ && _loc1_))
               {
                  break;
               }
               §§goto(addr78);
            }
            return;
         }
         §§goto(addr78);
      }
      
      public static function §<!^§(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §@Y§(§<!g§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
         }
      }
      
      public static function §@Y§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§#o§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS));
         if(!_loc6_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         if(!(_loc6_ && param2))
         {
            §<!g§.trackSampledEvent(_loc4_,§3A§,param1,param2,param3);
         }
      }
      
      public static function §+!<§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:* = null;
         if(!_loc7_)
         {
            §§push(§ K§);
            if(!_loc7_)
            {
               if(§§pop().indexOf(param2) >= 0)
               {
                  if(!(_loc7_ && param3))
                  {
                     §§goto(addr36);
                  }
               }
               §§push(§ K§);
            }
            var _loc5_:* = §§pop().length == 0;
            if(!(_loc7_ && param1))
            {
               § K§.push(param2);
               loop0:
               while(true)
               {
                  §§push(param3);
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§push(§<!g§.ACTION_CPU_FPS_REPORT);
                           loop3:
                           while(true)
                           {
                              _loc6_ = §§pop();
                              addr194:
                              loop17:
                              while(true)
                              {
                                 §§push(param4);
                                 loop15:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          addr66:
                                          loop12:
                                          while(true)
                                          {
                                             §§push(_loc5_);
                                             if(_loc7_ && param1)
                                             {
                                                break;
                                             }
                                             if(§§pop())
                                             {
                                                if(!_loc7_)
                                                {
                                                   addr78:
                                                   if(_loc8_ || param3)
                                                   {
                                                      §@Y§(_loc6_,param1.toString(),param1);
                                                   }
                                                   else
                                                   {
                                                      addr135:
                                                      while(_loc8_ || §>d§)
                                                      {
                                                         continue loop12;
                                                         §§goto(addr78);
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               §§push(param4);
                                                               break loop12;
                                                            }
                                                            continue loop17;
                                                         }
                                                         addr158:
                                                         while(true)
                                                         {
                                                            §§push(§>d§.§+!e§);
                                                            addr160:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               addr161:
                                                               while(true)
                                                               {
                                                                  if(!(_loc7_ && param3))
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     continue loop0;
                                                                  }
                                                                  continue loop3;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr135:
                                                      addr150:
                                                   }
                                                }
                                                while(true)
                                                {
                                                }
                                                addr101:
                                             }
                                             while(true)
                                             {
                                                §-!!§(§?6§,_loc6_,param2,param1);
                                                if(!_loc7_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr101);
                                             }
                                             if(_loc8_)
                                             {
                                                return;
                                             }
                                             continue loop2;
                                          }
                                          while(true)
                                          {
                                             if(!(_loc8_ || param2))
                                             {
                                                continue loop15;
                                             }
                                             if(!_loc8_)
                                             {
                                                break;
                                             }
                                             if(!§§pop())
                                             {
                                                continue;
                                             }
                                             if(!_loc7_)
                                             {
                                                if(_loc7_)
                                                {
                                                   continue loop0;
                                                }
                                                §§push(§>d§.§8W§);
                                                if(_loc8_)
                                                {
                                                   if(_loc8_ || param3)
                                                   {
                                                      addr130:
                                                      §§push(§§pop());
                                                      if(!_loc7_)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            _loc6_ = §§pop();
                                                            §§goto(addr135);
                                                         }
                                                         §§goto(addr160);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            _loc6_ = §§pop();
                                                         }
                                                         addr149:
                                                      }
                                                      §§goto(addr150);
                                                   }
                                                   §§goto(addr161);
                                                }
                                                §§goto(addr130);
                                             }
                                             §§goto(addr135);
                                          }
                                          continue loop1;
                                       }
                                       addr143:
                                    }
                                    §§goto(addr158);
                                 }
                              }
                           }
                        }
                     }
                     else
                     {
                        §§push(§<!g§.ACTION_GPU_FPS_REPORT);
                     }
                     §§goto(addr149);
                  }
               }
            }
            §§goto(addr194);
         }
         addr36:
      }
      
      public static function §2I§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §-!!§(§]8§,§3G§,param1,0);
         }
      }
      
      public static function §]!5§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            while(§§pop() != null)
            {
               §§push(param1);
               if(!(_loc2_ && §>d§))
               {
                  if(§§pop().length == 0)
                  {
                     if(_loc2_ && §>d§)
                     {
                        break;
                     }
                     addr75:
                     param1 = "[empty]";
                  }
                  loop2:
                  while(true)
                  {
                     §-!!§(§]8§,§]x§,param1,0);
                     if(_loc3_)
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
            param1 = "[null]";
            §§goto(addr83);
         }
         §§goto(addr75);
      }
      
      public static function §-]§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §-!!§(§]8§,§[[§,param1,0);
         }
      }
      
      public static function § T§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §-!!§(§+!^§,param1,"",0,false);
         }
      }
      
      private static function §-!!§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:* = null;
         if(_loc8_)
         {
            if(enabled)
            {
               loop0:
               do
               {
                  §§push(§?!N§);
                  loop1:
                  while(true)
                  {
                     _loc6_ = §§pop();
                     loop2:
                     while(param5)
                     {
                        if(_loc8_)
                        {
                           if(!_loc8_)
                           {
                              continue;
                           }
                           §§push(§#o§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES));
                           if(_loc8_ || param1)
                           {
                              if(!(_loc8_ || param1))
                              {
                                 continue loop1;
                              }
                              §§push(§§pop());
                           }
                           _loc6_ = §§pop();
                           while(true)
                           {
                              break loop2;
                           }
                           addr98:
                        }
                        §§goto(addr98);
                     }
                     while(true)
                     {
                        trackSampledEvent(_loc6_,param1,param2,param3,param4);
                        if(_loc8_ || param1)
                        {
                           break;
                        }
                        §§goto(addr98);
                     }
                     continue loop0;
                  }
               }
               while(_loc7_ && param1);
               
            }
            return;
         }
         §§goto(addr98);
      }
      
      private static function §#o§(param1:String, param2:Array, param3:Array) : String
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
               addr74:
               while(true)
               {
                  if(§§pop().indexOf(§§pop()) < 0)
                  {
                     continue loop0;
                  }
                  if(_loc5_)
                  {
                     break;
                  }
                  addr81:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               return TRACKING_FUNCTION_1_PERCENT;
            }
         }
         §§goto(addr61);
      }
      
      private static function §,"§(param1:Array) : String
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
               if(_loc8_ || _loc2_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc7_ && _loc3_))
                     {
                        §§pop();
                        §§goto(addr60);
                     }
                  }
               }
               if(§§pop())
               {
                  if(!_loc7_)
                  {
                     return null;
                  }
                  §§goto(addr60);
               }
               §§goto(addr60);
            }
            §§goto(addr52);
         }
         addr60:
         if(!(_loc7_ && param1))
         {
            addr52:
            §§push(param1.length == 0);
         }
         var _loc2_:* = "";
         var _loc3_:Array = param1.concat();
         if(!(_loc7_ && _loc2_))
         {
            _loc3_.sort();
         }
         var _loc5_:int = 0;
         var _loc6_:* = _loc3_;
         loop0:
         while(§§hasnext(_loc6_,_loc5_))
         {
            §§push(§§nextvalue(_loc5_,_loc6_));
            do
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
                           if(!(_loc8_ || _loc2_))
                           {
                              continue;
                           }
                           §§push(§§pop());
                        }
                        if(!(_loc7_ && §>d§))
                        {
                           if(_loc7_ && param1)
                           {
                              §§push(§§pop() + ("-" + _loc4_));
                           }
                           _loc2_ = §§pop();
                           if(!(_loc7_ && §>d§))
                           {
                              if(_loc7_ && param1)
                              {
                                 break;
                              }
                              if(false)
                              {
                                 continue loop3;
                              }
                           }
                           else
                           {
                              addr157:
                           }
                           continue loop0;
                           addr144:
                           break loop2;
                        }
                        break loop2;
                     }
                     if(!_loc8_)
                     {
                        continue loop2;
                     }
                     §§goto(addr144);
                     §§push(_loc2_);
                  }
               }
            }
            while(_loc7_ && _loc3_);
            
            _loc2_ = §§pop();
            §§goto(addr157);
         }
         return _loc2_;
      }
      
      private static function §>g§(param1:int = 0) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(getTimer() / 1000);
         if(!_loc2_)
         {
            return §§pop() - param1;
         }
      }
   }
}
