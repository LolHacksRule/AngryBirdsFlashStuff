package § !Y§
{
   import flash.utils.getTimer;
   
   public class §="6§ extends §%Y§
   {
      
      public static const §,!&§:String = "level-selection";
      
      public static const §6G§:String = "registration-success";
      
      public static const §9$§:String = "registration-failure";
      
      public static const §+!C§:String = "login-success";
      
      public static const §@!>§:String = "login-failure";
      
      private static const §#T§:Boolean;
      
      private static const §7!O§:String = "framerate";
      
      private static const §%!]§:String = "powerup-used";
      
      private static const §-!e§:String = "level-powerup-used";
      
      private static const §'"'§:String = "warning";
      
      private static const §]O§:String = "user-statistics";
      
      private static const §^+§:String = "error";
      
      private static const §6^§:String;
      
      private static const §8!Y§:String;
      
      private static const §?!8§:String = "download-failed";
      
      private static const §<"4§:String = "invalid-level";
      
      private static const §;1§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array;
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array;
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §!1§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §="6§))
         {
            §,!&§ = "level-selection";
            loop0:
            while(true)
            {
               §6G§ = "registration-success";
               loop1:
               while(true)
               {
                  §9$§ = "registration-failure";
                  loop2:
                  while(true)
                  {
                     §+!C§ = "login-success";
                     loop3:
                     while(true)
                     {
                        §@!>§ = "login-failure";
                        continue loop0;
                        loop13:
                        while(true)
                        {
                           if(_loc1_ && _loc1_)
                           {
                              continue loop3;
                           }
                           §?!8§ = "download-failed";
                           loop14:
                           while(true)
                           {
                              if(_loc2_ || _loc1_)
                              {
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 §<"4§ = "invalid-level";
                                 loop15:
                                 while(_loc2_)
                                 {
                                    §;1§ = "flash-var-missing";
                                    loop16:
                                    while(true)
                                    {
                                       SAMPLE_1_PERCENT_FLASH_ACTIONS = [§!t§,§49§];
                                       addr153:
                                       loop17:
                                       while(_loc2_ || _loc2_)
                                       {
                                          SAMPLE_100_PERCENT_FLASH_ACTIONS = [ACTION_APPLICATION_CRASH,§8!5§,§83§];
                                          continue loop14;
                                          addr70:
                                          if(!(_loc2_ || §="6§))
                                          {
                                             continue;
                                          }
                                          if(_loc2_)
                                          {
                                             §!1§ = [];
                                             addr79:
                                             if(!(_loc2_ || _loc1_))
                                             {
                                                addr207:
                                                loop23:
                                                while(true)
                                                {
                                                   if(_loc2_ || §="6§)
                                                   {
                                                      addr61:
                                                      if(_loc1_ && _loc1_)
                                                      {
                                                         while(!_loc1_)
                                                         {
                                                            FULL_SCREEN = "-full-screen";
                                                            while(true)
                                                            {
                                                               sSample10Percent = false;
                                                               addr84:
                                                               while(_loc2_ || §="6§)
                                                               {
                                                                  sSample1Percent = false;
                                                                  continue loop23;
                                                               }
                                                            }
                                                            §§goto(addr61);
                                                         }
                                                         continue loop16;
                                                         addr102:
                                                      }
                                                      if(_loc1_)
                                                      {
                                                         continue loop14;
                                                      }
                                                      §§goto(addr70);
                                                   }
                                                   §§goto(addr84);
                                                }
                                                while(!(_loc1_ && _loc2_))
                                                {
                                                   §8!Y§ = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
                                                   break loop15;
                                                }
                                                continue loop0;
                                                addr207:
                                             }
                                             addr40:
                                             if(!(_loc1_ && §="6§))
                                             {
                                                if(_loc2_)
                                                {
                                                   return;
                                                }
                                                break loop13;
                                             }
                                             while(_loc2_)
                                             {
                                                §]O§ = "user-statistics";
                                                while(_loc2_)
                                                {
                                                   §^+§ = "error";
                                                   break loop17;
                                                }
                                                continue loop1;
                                                §§goto(addr40);
                                             }
                                             continue loop2;
                                             addr231:
                                          }
                                          §§goto(addr207);
                                       }
                                       while(true)
                                       {
                                          §6^§ = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
                                          §§goto(addr207);
                                          §§goto(addr153);
                                       }
                                    }
                                    if(_loc1_ && §="6§)
                                    {
                                       continue;
                                    }
                                    if(_loc2_)
                                    {
                                       SAMPLE_100_PERCENT_CATEGORIES = [§^+§];
                                       §§goto(addr102);
                                    }
                                    §§goto(addr243);
                                 }
                                 continue loop13;
                              }
                              §§goto(addr224);
                           }
                           while(true)
                           {
                              §'"'§ = "warning";
                              §§goto(addr231);
                           }
                        }
                        addr256:
                        while(true)
                        {
                           §7!O§ = "framerate";
                           §§goto(addr250);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr243);
      }
      
      public function §="6§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §]C§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(Math.random() <= 0.1)
            {
               if(_loc2_)
               {
                  sSample10Percent = true;
               }
               while(true)
               {
               }
               addr71:
            }
            for(; Math.random() <= 0.01; §§goto(addr71))
            {
               if(!(_loc1_ && §="6§))
               {
                  if(!_loc1_)
                  {
                     sSample1Percent = true;
                     addr51:
                     break;
                  }
                  continue;
               }
               §§goto(addr51);
            }
            return;
         }
         §§goto(addr51);
      }
      
      public static function §`" §(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §^!U§(§%Y§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
         }
      }
      
      public static function §^!U§(param1:String, param2:String = null, param3:int = 0, param4:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§2!u§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS));
         if(_loc6_ || param1)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         if(!_loc7_)
         {
            §%Y§.trackSampledEvent(_loc5_,§!!&§,param1,param2,param3);
         }
      }
      
      public static function §"b§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:* = null;
         if(!_loc7_)
         {
            §§push(§!1§);
            if(_loc8_ || param1)
            {
               if(§§pop().indexOf(param2) >= 0)
               {
                  if(!_loc7_)
                  {
                     §§goto(addr36);
                  }
               }
               §§push(§!1§);
            }
            var _loc5_:* = §§pop().length == 0;
            if(!_loc7_)
            {
               §!1§.push(param2);
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
                           §§push(§%Y§.ACTION_CPU_FPS_REPORT);
                           loop3:
                           while(true)
                           {
                              _loc6_ = §§pop();
                              loop4:
                              while(true)
                              {
                                 §§push(param4);
                                 loop5:
                                 for(; !_loc7_; if(_loc7_ && param1)
                                 {
                                    continue;
                                 },if(§§pop())
                                 {
                                    if(_loc8_)
                                    {
                                       if(!(_loc7_ && §="6§))
                                       {
                                          if(_loc8_ || param1)
                                          {
                                             §^!U§(_loc6_,param1.toString(),param1);
                                             §§goto(addr126);
                                          }
                                          §§goto(addr137);
                                       }
                                       §§goto(addr164);
                                    }
                                    §§goto(addr126);
                                 },§§goto(addr49))
                                 {
                                    if(§§pop())
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          §§push(§="6§.§8!Y§);
                                          addr184:
                                          addr126:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             addr185:
                                             while(true)
                                             {
                                                _loc6_ = §§pop();
                                                addr186:
                                                while(true)
                                                {
                                                }
                                             }
                                          }
                                          loop13:
                                          while(true)
                                          {
                                             if(!(_loc8_ || param3))
                                             {
                                                continue loop6;
                                             }
                                             while(true)
                                             {
                                                addr49:
                                                while(true)
                                                {
                                                   §"!F§(§7!O§,_loc6_,param2,param1);
                                                   if(!_loc8_)
                                                   {
                                                      continue loop13;
                                                   }
                                                   if(!(_loc7_ && §="6§))
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         continue loop4;
                                                      }
                                                      §§goto(addr186);
                                                   }
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§push(param4);
                                                      addr136:
                                                      addr77:
                                                      loop16:
                                                      while(§§pop())
                                                      {
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§push(§="6§.§6^§);
                                                            if(!(_loc7_ && param3))
                                                            {
                                                               if(_loc8_ || §="6§)
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     §§push(§§pop());
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr184);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        break loop12;
                                                                     }
                                                                     _loc6_ = §§pop();
                                                                     continue loop15;
                                                                  }
                                                                  addr173:
                                                               }
                                                            }
                                                            if(!(_loc7_ && param3))
                                                            {
                                                               _loc6_ = §§pop();
                                                               addr164:
                                                               if(!_loc7_)
                                                               {
                                                                  break loop16;
                                                               }
                                                               continue loop2;
                                                            }
                                                            continue loop3;
                                                         }
                                                         §§goto(addr185);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc5_);
                                                         if(!(_loc7_ && param3))
                                                         {
                                                            continue loop5;
                                                         }
                                                         §§goto(addr136);
                                                      }
                                                      continue loop3;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr77);
                                       §§goto(addr186);
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                     else
                     {
                        §§push(§%Y§.ACTION_GPU_FPS_REPORT);
                     }
                     §§goto(addr173);
                  }
               }
            }
            §§goto(addr133);
         }
         addr36:
      }
      
      public static function §&!x§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §"!F§(§'"'§,§?!8§,param1,0);
         }
      }
      
      public static function §-J§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            while(§§pop() != null)
            {
               §§push(param1);
               if(!(_loc2_ && _loc2_))
               {
                  if(§§pop().length == 0)
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     addr70:
                     param1 = "[empty]";
                  }
                  loop2:
                  while(true)
                  {
                     §"!F§(§'"'§,§<"4§,param1,0);
                     if(_loc3_)
                     {
                        break;
                     }
                     addr78:
                     while(true)
                     {
                        continue loop2;
                     }
                  }
                  return;
               }
            }
            param1 = "[null]";
            §§goto(addr78);
         }
         §§goto(addr70);
      }
      
      public static function §'!]§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §"!F§(§'"'§,§;1§,param1,0);
         }
      }
      
      public static function §,"<§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §"!F§(§^+§,param1,"",0,false);
         }
      }
      
      private static function §"!F§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:* = null;
         if(_loc7_ || param2)
         {
            if(enabled)
            {
               if(!_loc8_)
               {
                  §§push(§?!U§);
                  loop0:
                  while(true)
                  {
                     _loc6_ = §§pop();
                     addr103:
                     while(true)
                     {
                        if(param5)
                        {
                           if(!(_loc8_ && param2))
                           {
                              §§push(§2!u§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES));
                              if(_loc7_ || param2)
                              {
                                 if(_loc8_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(§§pop());
                              }
                              _loc6_ = §§pop();
                           }
                           while(_loc7_ || param1)
                           {
                           }
                           continue;
                           addr78:
                        }
                        while(true)
                        {
                           trackSampledEvent(_loc6_,param1,param2,param3,param4);
                           if(!_loc8_)
                           {
                              break;
                           }
                           §§goto(addr78);
                        }
                     }
                  }
               }
               §§goto(addr103);
            }
            return;
         }
         §§goto(addr103);
      }
      
      public static function §[!F§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§1!O§());
         if(!(_loc4_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || §="6§)
         {
            §%9§(§%!]§,param1,param2,0);
            do
            {
               §%9§(§-!e§,param2,param1,0);
            }
            while(_loc4_);
            
         }
      }
      
      private static function §%9§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:* = null;
         if(_loc7_)
         {
            if(enabled)
            {
               if(_loc7_ || param3)
               {
                  §§push(§?!U§);
                  while(true)
                  {
                     _loc6_ = §§pop();
                     addr59:
                     §§push(§2!u§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES));
                     if(!(_loc8_ && param2))
                     {
                        §§push(§§pop());
                     }
                     if(_loc8_)
                     {
                        continue;
                     }
                     _loc6_ = §§pop();
                     loop4:
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           trackSampledEvent(_loc6_,param1,param2,param3,param4);
                           if(!(_loc7_ || §="6§))
                           {
                              continue loop4;
                           }
                           if(_loc7_)
                           {
                              break;
                           }
                           addr98:
                           while(!_loc8_)
                           {
                              §§goto(addr59);
                           }
                           while(true)
                           {
                              if(!param5)
                              {
                                 continue loop3;
                              }
                              §§goto(addr57);
                           }
                           addr57:
                        }
                        §§goto(addr22);
                     }
                     addr75:
                  }
               }
               §§goto(addr98);
            }
            addr22:
            return;
         }
         §§goto(addr75);
      }
      
      private static function §2!u§(param1:String, param2:Array, param3:Array) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
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
                     if(_loc4_)
                     {
                        §§push(param1);
                        if(_loc4_ || param1)
                        {
                           if(§§pop().indexOf(§§pop()) >= 0)
                           {
                              break;
                           }
                           if(_loc4_)
                           {
                              if(_loc4_)
                              {
                                 return TRACKING_FUNCTION_10_PERCENT;
                              }
                              break loop1;
                           }
                           if(_loc4_ || param1)
                           {
                              addr72:
                              break;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
                  return §?!U§;
               }
               return TRACKING_FUNCTION_1_PERCENT;
            }
         }
         §§goto(addr72);
      }
      
      private static function §,I§(param1:Array) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = null;
         if(_loc7_)
         {
            §§push(param1);
            if(!(_loc8_ && §="6§))
            {
               §§push(§§pop() == null);
               if(_loc7_)
               {
                  if(!§§pop())
                  {
                     if(_loc7_)
                     {
                        addr37:
                        §§pop();
                        if(_loc7_)
                        {
                           §§goto(addr44);
                        }
                        §§goto(addr47);
                     }
                  }
                  addr44:
                  §§goto(addr41);
               }
               §§goto(addr37);
            }
            addr41:
            §§goto(addr40);
         }
         addr40:
         if(param1.length == 0)
         {
            if(!_loc8_)
            {
               addr47:
               return null;
            }
         }
         var _loc2_:* = "";
         var _loc3_:Array = param1.concat();
         if(!(_loc8_ && _loc2_))
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
               addr149:
               loop2:
               while(true)
               {
                  addr119:
                  while(true)
                  {
                     §§push(_loc2_);
                     while(§§pop().length <= 0)
                     {
                        §§push(_loc4_);
                        if(_loc7_)
                        {
                           if(_loc8_)
                           {
                              addr125:
                              §§push(§§pop() + ("-" + _loc4_));
                              break loop2;
                           }
                           §§push(§§pop());
                        }
                        if(!_loc7_)
                        {
                           break loop2;
                        }
                        if(!(_loc8_ && _loc2_))
                        {
                           continue loop1;
                        }
                     }
                     addr124:
                     §§goto(addr125);
                  }
                  continue loop1;
               }
               addr131:
               _loc2_ = §§pop();
               continue loop0;
            }
         }
         return _loc2_;
      }
      
      private static function §1!O§(param1:int = 0) : int
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
