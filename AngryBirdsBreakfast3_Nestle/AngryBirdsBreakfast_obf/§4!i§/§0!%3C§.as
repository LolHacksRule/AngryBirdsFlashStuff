package §4!i§
{
   import flash.utils.getTimer;
   
   public class §0!<§ extends §^"#§
   {
      
      public static const §<z§:String = "level-selection";
      
      public static const §;!N§:String = "registration-success";
      
      public static const §6"2§:String = "registration-failure";
      
      public static const §+!-§:String = "login-success";
      
      public static const §5e§:String = "login-failure";
      
      private static const §#3§:Boolean;
      
      private static const §2!B§:String = "framerate";
      
      private static const §<!J§:String = "powerup-used";
      
      private static const §0!_§:String = "level-powerup-used";
      
      private static const §1!M§:String = "warning";
      
      private static const §5!Y§:String = "user-statistics";
      
      private static const §+I§:String = "error";
      
      private static const §;!+§:String;
      
      private static const §8!6§:String;
      
      private static const §67§:String = "download-failed";
      
      private static const § !-§:String = "invalid-level";
      
      private static const § Q§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array;
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array;
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §[h§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §<z§ = "level-selection";
            loop0:
            while(true)
            {
               §;!N§ = "registration-success";
               loop1:
               while(true)
               {
                  §6"2§ = "registration-failure";
                  while(true)
                  {
                     §+!-§ = "login-success";
                     loop3:
                     while(true)
                     {
                        §5e§ = "login-failure";
                        loop4:
                        while(true)
                        {
                           §#3§ = § !4§.§!L§;
                           while(true)
                           {
                              §2!B§ = "framerate";
                              continue loop4;
                              addr159:
                              if(_loc2_ && _loc2_)
                              {
                                 continue;
                              }
                              SAMPLE_100_PERCENT_FLASH_ACTIONS = [ACTION_APPLICATION_CRASH,§3",§,§9"&§];
                              loop19:
                              while(true)
                              {
                                 SAMPLE_1_PERCENT_CATEGORIES = [§2!B§];
                                 addr118:
                                 addr171:
                                 loop20:
                                 while(_loc1_ || §0!<§)
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop4;
                                    }
                                    SAMPLE_100_PERCENT_CATEGORIES = [§+I§];
                                    loop21:
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop20;
                                       }
                                       if(!(_loc1_ || §0!<§))
                                       {
                                          break;
                                       }
                                       FULL_SCREEN = "-full-screen";
                                       loop22:
                                       while(true)
                                       {
                                          sSample10Percent = false;
                                          continue loop19;
                                          loop24:
                                          while(true)
                                          {
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                continue loop21;
                                             }
                                             continue loop22;
                                             addr73:
                                             §[h§ = [];
                                             if(_loc1_ || §0!<§)
                                             {
                                                if(_loc1_)
                                                {
                                                   addr41:
                                                   if(_loc1_ || _loc1_)
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         return;
                                                      }
                                                      addr223:
                                                      while(true)
                                                      {
                                                         §+I§ = "error";
                                                         addr218:
                                                         while(true)
                                                         {
                                                            §;!+§ = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
                                                            addr213:
                                                            addr85:
                                                            while(true)
                                                            {
                                                               §8!6§ = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
                                                            }
                                                            if(_loc1_ || _loc2_)
                                                            {
                                                               sSample1Percent = false;
                                                               continue loop24;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc1_ || _loc2_)
                                                      {
                                                         §67§ = "download-failed";
                                                         break loop24;
                                                      }
                                                      break;
                                                      §§goto(addr41);
                                                   }
                                                   continue loop0;
                                                   addr199:
                                                }
                                                continue loop19;
                                             }
                                          }
                                          addr190:
                                          while(_loc1_)
                                          {
                                             § !-§ = "invalid-level";
                                             while(true)
                                             {
                                                § Q§ = "flash-var-missing";
                                                break loop20;
                                             }
                                          }
                                          §§goto(addr213);
                                       }
                                    }
                                    while(!(_loc2_ && §0!<§))
                                    {
                                       §§goto(addr159);
                                       §§goto(addr105);
                                    }
                                    §§goto(addr185);
                                 }
                                 while(_loc1_ || _loc1_)
                                 {
                                    if(!_loc1_)
                                    {
                                       continue loop1;
                                    }
                                    SAMPLE_1_PERCENT_FLASH_ACTIONS = [§61§,§&!$§];
                                    §§goto(addr152);
                                    §§goto(addr118);
                                 }
                                 loop8:
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       §1!M§ = "warning";
                                       continue loop0;
                                    }
                                    addr249:
                                    while(true)
                                    {
                                       §0!_§ = "level-powerup-used";
                                       continue loop8;
                                    }
                                 }
                                 continue loop3;
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
            §5!Y§ = "user-statistics";
            §§goto(addr223);
         }
      }
      
      public function §0!<§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function §!"-§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(Math.random() <= 0.1)
            {
               while(true)
               {
                  sSample10Percent = true;
                  addr81:
                  while(true)
                  {
                  }
                  addr56:
                  if(!(_loc2_ || §0!<§))
                  {
                     continue;
                  }
                  addr20:
                  return;
                  addr73:
               }
            }
            for(; Math.random() <= 0.01; §§goto(addr81))
            {
               if(!(_loc1_ && §0!<§))
               {
                  sSample1Percent = true;
               }
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
               §§goto(addr56);
            }
            §§goto(addr20);
         }
         §§goto(addr73);
      }
      
      public static function §<[§(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §1x§(§^"#§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
         }
      }
      
      public static function §1x§(param1:String, param2:String = null, param3:int = 0, param4:int = 0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§5!5§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS));
         if(!_loc6_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         if(_loc7_ || §0!<§)
         {
            §^"#§.trackSampledEvent(_loc5_,§&Q§,param1,param2,param3);
         }
      }
      
      public static function §'d§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:* = null;
         if(_loc8_ || param3)
         {
            §§push(§[h§);
            if(_loc8_ || §0!<§)
            {
               if(§§pop().indexOf(param2) >= 0)
               {
                  if(!(_loc7_ && param2))
                  {
                     return;
                  }
                  addr47:
                  §§push(§[h§);
               }
               §§goto(addr47);
            }
            var _loc5_:* = §§pop().length == 0;
            if(_loc8_)
            {
               §[h§.push(param2);
            }
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
                        §§push(§^"#§.ACTION_CPU_FPS_REPORT);
                        loop3:
                        while(true)
                        {
                           _loc6_ = §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(param4);
                              loop5:
                              for(; !_loc7_; while(true)
                              {
                                 if(_loc7_ && §0!<§)
                                 {
                                    continue loop5;
                                 }
                                 if(§§pop())
                                 {
                                    if(!(_loc7_ && param1))
                                    {
                                       §§push(§0!<§.§;!+§);
                                       if(_loc8_ || param2)
                                       {
                                          if(!(_loc7_ && param1))
                                          {
                                             addr155:
                                             §§push(§§pop());
                                             if(!_loc7_)
                                             {
                                                _loc6_ = §§pop();
                                                break;
                                             }
                                             §§goto(addr167);
                                          }
                                          §§goto(addr190);
                                       }
                                       §§goto(addr155);
                                    }
                                    break;
                                 }
                                 §§goto(addr78);
                              },§§goto(addr158))
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(§0!<§.§8!6§);
                                       if(!_loc7_)
                                       {
                                          if(!_loc8_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop());
                                       }
                                       addr190:
                                       while(true)
                                       {
                                          _loc6_ = §§pop();
                                          addr191:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                    continue loop3;
                                    addr183:
                                 }
                                 loop9:
                                 while(true)
                                 {
                                    addr78:
                                    while(true)
                                    {
                                       §§push(_loc5_);
                                       if(_loc8_ || §0!<§)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc7_ && §0!<§))
                                             {
                                                if(!_loc8_)
                                                {
                                                   loop11:
                                                   while(_loc8_ || param2)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         §§push(param4);
                                                         continue loop5;
                                                      }
                                                      continue loop2;
                                                      while(true)
                                                      {
                                                         _loc6_ = §§pop();
                                                         continue loop11;
                                                      }
                                                   }
                                                   continue loop9;
                                                }
                                                if(_loc7_ && param3)
                                                {
                                                   continue loop4;
                                                }
                                                §1x§(_loc6_,param1.toString(),param1);
                                             }
                                             while(true)
                                             {
                                             }
                                             addr120:
                                          }
                                          while(true)
                                          {
                                             §@K§(§2!B§,_loc6_,param2,param1);
                                             if(!_loc7_)
                                             {
                                                break;
                                             }
                                             §§goto(addr120);
                                          }
                                          if(!(_loc7_ && §0!<§))
                                          {
                                             if(!_loc7_)
                                             {
                                                return;
                                             }
                                             continue loop0;
                                          }
                                          addr158:
                                          if(_loc7_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop5;
                                    }
                                    §§goto(addr183);
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
                  else
                  {
                     §§push(§^"#§.ACTION_GPU_FPS_REPORT);
                  }
                  §§goto(addr167);
               }
            }
         }
         §§goto(addr47);
      }
      
      public static function §&K§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §@K§(§1!M§,§67§,param1,0);
         }
      }
      
      public static function §2Z§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            while(§§pop() != null)
            {
               §§push(param1);
               if(_loc2_)
               {
                  if(§§pop().length == 0)
                  {
                     if(_loc3_ && _loc3_)
                     {
                        break;
                     }
                     param1 = "[empty]";
                  }
                  loop2:
                  while(true)
                  {
                     §@K§(§1!M§,§ !-§,param1,0);
                     if(_loc2_ || _loc2_)
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
      
      public static function §,!y§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §@K§(§1!M§,§ Q§,param1,0);
         }
      }
      
      public static function §3K§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §@K§(§+I§,param1,"",0,false);
         }
      }
      
      private static function §@K§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
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
                  §§push(§;i§);
                  loop1:
                  while(true)
                  {
                     _loc6_ = §§pop();
                     while(true)
                     {
                        if(!param5)
                        {
                           loop3:
                           while(true)
                           {
                              trackSampledEvent(_loc6_,param1,param2,param3,param4);
                              if(_loc7_)
                              {
                                 if(_loc7_)
                                 {
                                    §§goto(addr27);
                                 }
                                 else
                                 {
                                    addr57:
                                 }
                                 addr57:
                                 while(true)
                                 {
                                    §§push(§5!5§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES));
                                    if(!_loc8_)
                                    {
                                       §§push(§§pop());
                                    }
                                    if(!(_loc7_ || §0!<§))
                                    {
                                       continue loop1;
                                    }
                                    _loc6_ = §§pop();
                                 }
                              }
                              while(true)
                              {
                                 if(_loc8_)
                                 {
                                    break loop3;
                                 }
                                 continue loop0;
                              }
                              addr87:
                           }
                           continue;
                        }
                        §§goto(addr57);
                     }
                  }
               }
            }
            addr27:
            return;
         }
         §§goto(addr57);
      }
      
      public static function §+!m§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§6!3§());
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || param1)
         {
            §+;§(§<!J§,param1,param2,0);
         }
         do
         {
            §+;§(§0!_§,param2,param1,0);
         }
         while(_loc5_ && _loc3_);
         
      }
      
      private static function §+;§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:* = null;
         if(!(_loc8_ && param1))
         {
            if(enabled)
            {
               loop0:
               while(true)
               {
                  §§push(§;i§);
                  loop1:
                  while(true)
                  {
                     _loc6_ = §§pop();
                     while(true)
                     {
                        if(!param5)
                        {
                           do
                           {
                              trackSampledEvent(_loc6_,param1,param2,param3,param4);
                           }
                           while(_loc8_);
                           
                           addr27:
                           return;
                           addr31:
                        }
                        if(!(_loc8_ && param2))
                        {
                           while(true)
                           {
                              §§push(§5!5§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES));
                              if(_loc7_)
                              {
                                 if(!(_loc7_ || param3))
                                 {
                                    continue loop1;
                                 }
                                 §§push(§§pop());
                              }
                              _loc6_ = §§pop();
                           }
                           addr62:
                        }
                        while(_loc7_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
            §§goto(addr27);
         }
         §§goto(addr62);
      }
      
      private static function §5!5§(param1:String, param2:Array, param3:Array) : String
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
         §§goto(addr81);
      }
      
      private static function §0H§(param1:Array) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = null;
         if(!_loc8_)
         {
            §§push(param1);
            if(!(_loc8_ && param1))
            {
               §§push(§§pop() == null);
               if(!(_loc8_ && param1))
               {
                  if(!§§pop())
                  {
                     if(!(_loc8_ && §0!<§))
                     {
                        §§pop();
                        if(_loc7_)
                        {
                           §§goto(addr54);
                        }
                        §§goto(addr62);
                     }
                  }
               }
               addr54:
               §§goto(addr51);
            }
            addr51:
            §§goto(addr50);
         }
         addr50:
         if(param1.length == 0)
         {
            if(_loc7_ || param1)
            {
               addr62:
               return null;
            }
         }
         var _loc2_:* = "";
         var _loc3_:Array = param1.concat();
         if(_loc7_)
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
                        if(_loc7_)
                        {
                           if(!_loc8_)
                           {
                              continue loop1;
                           }
                           addr143:
                           §§push(§§pop() + ("-" + _loc4_));
                        }
                        else
                        {
                           addr106:
                           if(_loc7_ || param1)
                           {
                              if(_loc7_ || §0!<§)
                              {
                                 _loc2_ = §§pop();
                                 if(_loc7_ || _loc2_)
                                 {
                                    if(_loc8_ && _loc2_)
                                    {
                                       break;
                                    }
                                    if(false)
                                    {
                                       continue loop3;
                                    }
                                    continue loop0;
                                 }
                                 addr149:
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    break loop2;
                                 }
                                 continue loop2;
                              }
                              continue;
                           }
                        }
                        _loc2_ = §§pop();
                        §§goto(addr149);
                     }
                     §§goto(addr143);
                  }
               }
               continue loop0;
            }
         }
         return _loc2_;
      }
      
      private static function §6!3§(param1:int = 0) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(getTimer() / 1000);
         if(!(_loc2_ && §0!<§))
         {
            return §§pop() - param1;
         }
      }
   }
}
