package §=! §
{
   import flash.utils.getTimer;
   
   public class §9>§ extends §,Z§
   {
      
      public static const §8W§:String = "level-selection";
      
      public static const §9B§:String = "registration-success";
      
      public static const §3!Q§:String = "registration-failure";
      
      public static const §-!D§:String = "login-success";
      
      public static const § j§:String = "login-failure";
      
      private static const §throw§:Boolean;
      
      private static const §>i§:String = "framerate";
      
      private static const §2!6§:String = "warning";
      
      private static const §?!V§:String = "user-statistics";
      
      private static const §>P§:String = "error";
      
      private static const §3q§:String;
      
      private static const §"S§:String;
      
      private static const §0Z§:String = "download-failed";
      
      private static const §;i§:String = "invalid-level";
      
      private static const §`!>§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array;
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array;
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §;!F§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §9>§)
         {
            §8W§ = "level-selection";
         }
         loop0:
         while(true)
         {
            §9B§ = "registration-success";
            while(true)
            {
               §3!Q§ = "registration-failure";
               loop2:
               while(true)
               {
                  §-!D§ = "login-success";
                  loop3:
                  while(true)
                  {
                     § j§ = "login-failure";
                     continue loop2;
                     addr175:
                     if(_loc1_ && _loc2_)
                     {
                        continue;
                     }
                     §;i§ = "invalid-level";
                     loop13:
                     while(_loc2_ || _loc1_)
                     {
                        §`!>§ = "flash-var-missing";
                        loop14:
                        while(true)
                        {
                           SAMPLE_1_PERCENT_FLASH_ACTIONS = [§-Q§,§"-§];
                           loop15:
                           for(; _loc2_; if(_loc1_ && _loc2_)
                           {
                              continue;
                           },§§goto(addr80))
                           {
                              SAMPLE_100_PERCENT_FLASH_ACTIONS = [ACTION_APPLICATION_CRASH,§+!V§,§,+§];
                              loop16:
                              while(true)
                              {
                                 SAMPLE_1_PERCENT_CATEGORIES = [§>i§];
                                 loop17:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop13;
                                    }
                                    addr110:
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       addr117:
                                       if(!(_loc2_ || _loc1_))
                                       {
                                          break;
                                       }
                                       SAMPLE_100_PERCENT_CATEGORIES = [§>P§];
                                       loop18:
                                       while(_loc2_)
                                       {
                                          FULL_SCREEN = "-full-screen";
                                          loop19:
                                          while(_loc2_)
                                          {
                                             sSample10Percent = false;
                                             while(true)
                                             {
                                                if(_loc2_ || _loc2_)
                                                {
                                                   continue loop15;
                                                }
                                                continue loop19;
                                                addr87:
                                                sSample1Percent = false;
                                                do
                                                {
                                                   §;!F§ = [];
                                                }
                                                while(!(_loc2_ || §9>§));
                                                
                                                if(_loc2_)
                                                {
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      continue loop17;
                                                   }
                                                   continue loop18;
                                                   continue loop18;
                                                }
                                             }
                                             while(true)
                                             {
                                                §3q§ = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
                                                addr196:
                                                addr232:
                                                while(!(_loc1_ && §9>§))
                                                {
                                                   §"S§ = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
                                                   while(true)
                                                   {
                                                      addr169:
                                                      §0Z§ = "download-failed";
                                                      break loop15;
                                                      §§goto(addr110);
                                                   }
                                                }
                                                addr245:
                                                while(true)
                                                {
                                                   if(!(_loc1_ && _loc1_))
                                                   {
                                                      §2!6§ = "warning";
                                                      break loop13;
                                                   }
                                                   break;
                                                   §§goto(addr196);
                                                }
                                                while(true)
                                                {
                                                   §>i§ = "framerate";
                                                   §§goto(addr232);
                                                }
                                                addr80:
                                                if(_loc1_ && _loc1_)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr87);
                                             }
                                          }
                                          continue loop14;
                                       }
                                       continue loop16;
                                    }
                                    §§goto(addr189);
                                    §§goto(addr169);
                                 }
                                 addr213:
                                 while(_loc2_)
                                 {
                                    continue loop0;
                                    §§goto(addr117);
                                 }
                                 continue loop2;
                              }
                           }
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 §§goto(addr175);
                              }
                              else
                              {
                                 §§goto(addr196);
                              }
                           }
                           continue loop3;
                        }
                     }
                     while(true)
                     {
                        §?!V§ = "user-statistics";
                        §§goto(addr213);
                        §§goto(addr161);
                     }
                     addr161:
                  }
               }
               if(_loc1_ && §9>§)
               {
                  continue;
               }
               §throw§ = §,L§.§]!^§;
               §§goto(addr245);
            }
         }
      }
      
      public function §9>§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §=2§() : void
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
                  addr80:
                  while(true)
                  {
                  }
                  addr52:
                  if(_loc2_ && _loc1_)
                  {
                     continue;
                  }
                  sSample1Percent = true;
                  addr19:
                  return;
                  addr72:
               }
            }
            for(; Math.random() <= 0.01; §§goto(addr80))
            {
               if(_loc1_ || _loc2_)
               {
                  if(_loc2_ && _loc1_)
                  {
                     continue;
                  }
                  §§goto(addr52);
               }
               §§goto(addr72);
            }
         }
         §§goto(addr19);
      }
      
      public static function §0X§(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §>%§(§,Z§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
         }
      }
      
      public static function §>%§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§@F§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS));
         if(!(_loc6_ && §9>§))
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         if(_loc5_ || param2)
         {
            §,Z§.trackSampledEvent(_loc4_,§=!H§,param1,param2,param3);
         }
      }
      
      public static function §+u§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:* = null;
         if(_loc8_ || param1)
         {
            §§push(§;!F§);
            if(!_loc7_)
            {
               if(§§pop().indexOf(param2) >= 0)
               {
                  if(!_loc7_)
                  {
                     §§goto(addr36);
                  }
               }
               §§push(§;!F§);
            }
            var _loc5_:* = §§pop().length == 0;
            if(_loc8_ || param1)
            {
               §;!F§.push(param2);
               while(true)
               {
                  §§push(param3);
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§push(§,Z§.ACTION_CPU_FPS_REPORT);
                           loop3:
                           while(true)
                           {
                              _loc6_ = §§pop();
                              addr204:
                              while(true)
                              {
                                 §§push(param4);
                                 loop5:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       addr173:
                                       while(true)
                                       {
                                          §§push(§9>§.§"S§);
                                          if(!_loc7_)
                                          {
                                             if(!(_loc8_ || param2))
                                             {
                                                continue loop3;
                                             }
                                             §§push(§§pop());
                                          }
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
                                       addr173:
                                    }
                                    while(true)
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          if(_loc8_)
                                          {
                                             continue loop5;
                                          }
                                          addr129:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc8_ || param3)
                                                {
                                                   §§push(§9>§.§3q§);
                                                   if(!(_loc7_ && param3))
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         §§push(§§pop());
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               addr159:
                                                               _loc6_ = §§pop();
                                                               continue loop2;
                                                            }
                                                            §§goto(addr185);
                                                         }
                                                         addr157:
                                                      }
                                                   }
                                                   _loc6_ = §§pop();
                                                }
                                                addr150:
                                             }
                                             continue loop7;
                                          }
                                       }
                                       §§goto(addr186);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     else
                     {
                        §§push(§,Z§.ACTION_GPU_FPS_REPORT);
                     }
                     §§goto(addr157);
                     if(!(_loc8_ || param2))
                     {
                        continue;
                     }
                     if(§§pop())
                     {
                        if(!_loc7_)
                        {
                           §>%§(_loc6_,param1.toString(),param1);
                        }
                        while(true)
                        {
                           if(_loc8_ || param1)
                           {
                              if(!_loc7_)
                              {
                                 if(_loc8_ || §9>§)
                                 {
                                    if(_loc8_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr204);
                                 }
                                 §§goto(addr173);
                              }
                              §§goto(addr186);
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr150);
                        addr108:
                     }
                     while(true)
                     {
                        §,`§(§>i§,_loc6_,param2,param1);
                        if(!(_loc7_ && param1))
                        {
                           if(!_loc7_)
                           {
                              return;
                           }
                           §§goto(addr150);
                        }
                        §§goto(addr108);
                     }
                  }
               }
            }
            §§goto(addr173);
         }
         addr36:
      }
      
      public static function §+!%§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §,`§(§2!6§,§0Z§,param1,0);
         }
      }
      
      public static function §>!,§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(param1);
            while(§§pop() != null)
            {
               §§push(param1);
               if(!(_loc3_ && param1))
               {
                  if(§§pop().length == 0)
                  {
                     if(!_loc2_)
                     {
                        break;
                     }
                     param1 = "[empty]";
                  }
                  loop2:
                  while(true)
                  {
                     §,`§(§2!6§,§;i§,param1,0);
                     if(_loc2_)
                     {
                        break;
                     }
                     addr82:
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
         §§goto(addr82);
      }
      
      public static function §,e§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §,`§(§2!6§,§`!>§,param1,0);
         }
      }
      
      public static function §%k§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §,`§(§>P§,param1,"",0,false);
         }
      }
      
      private static function §,`§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:* = null;
         if(!_loc8_)
         {
            if(enabled)
            {
               if(_loc7_ || §9>§)
               {
                  §§push(§6!O§);
                  while(true)
                  {
                     _loc6_ = §§pop();
                     addr66:
                     if(_loc8_ && param1)
                     {
                        continue;
                     }
                     addr74:
                     _loc6_ = §§pop();
                     loop3:
                     while(true)
                     {
                        addr26:
                        while(true)
                        {
                           trackSampledEvent(_loc6_,param1,param2,param3,param4);
                           if(!(_loc8_ && param1))
                           {
                              break;
                           }
                           continue loop3;
                        }
                        if(_loc8_)
                        {
                           while(true)
                           {
                              if(param5)
                              {
                                 if(_loc8_)
                                 {
                                    continue loop3;
                                 }
                                 §§push(§@F§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES));
                                 if(_loc7_)
                                 {
                                    §§goto(addr66);
                                 }
                                 §§goto(addr74);
                              }
                              else
                              {
                                 §§goto(addr26);
                              }
                           }
                           addr98:
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
      
      private static function §@F§(param1:String, param2:Array, param3:Array) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && §9>§))
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
                     if(_loc4_ || §9>§)
                     {
                        break;
                     }
                     addr85:
                     while(true)
                     {
                     }
                     addr85:
                  }
                  while(true)
                  {
                     §§push(param2);
                     if(_loc4_)
                     {
                        §§push(param1);
                        if(_loc4_)
                        {
                           if(§§pop().indexOf(§§pop()) < 0)
                           {
                              if(_loc5_ && param3)
                              {
                                 break;
                              }
                              if(!_loc5_)
                              {
                                 return TRACKING_FUNCTION_10_PERCENT;
                              }
                              §§goto(addr85);
                           }
                           break;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
                  return §6!O§;
               }
               return TRACKING_FUNCTION_1_PERCENT;
            }
         }
         §§goto(addr85);
      }
      
      private static function §]!f§(param1:Array) : String
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = null;
         if(_loc8_ || _loc3_)
         {
            §§push(param1);
            if(!(_loc7_ && param1))
            {
               §§push(§§pop() == null);
               if(!_loc7_)
               {
                  if(!§§pop())
                  {
                     if(!_loc7_)
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
         var _loc2_:String = "";
         var _loc3_:Array = param1.concat();
         if(!_loc7_)
         {
            _loc3_.sort();
         }
         var _loc5_:int = 0;
         var _loc6_:* = _loc3_;
         while(§§hasnext(_loc6_,_loc5_))
         {
            §§push(§§nextvalue(_loc5_,_loc6_));
            loop1:
            while(true)
            {
               _loc4_ = §§pop();
               addr145:
               while(true)
               {
                  addr104:
                  while(true)
                  {
                     §§push(_loc2_);
                     continue loop1;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      private static function §@h§(param1:int = 0) : int
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
