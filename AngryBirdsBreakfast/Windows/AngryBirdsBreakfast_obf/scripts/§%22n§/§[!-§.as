package §"n§
{
   import flash.utils.getTimer;
   
   public class §[!-§ extends §+!a§
   {
      
      public static const §[G§:String = "level-selection";
      
      public static const §01§:String = "registration-success";
      
      public static const §&!l§:String = "registration-failure";
      
      public static const §=!$§:String = "login-success";
      
      public static const §1!a§:String = "login-failure";
      
      private static const §?!2§:Boolean;
      
      private static const §4§:String = "framerate";
      
      private static const §;5§:String = "powerup-used";
      
      private static const § h§:String = "level-powerup-used";
      
      private static const §9%§:String = "warning";
      
      private static const §^!y§:String = "user-statistics";
      
      private static const §6b§:String = "error";
      
      private static const §-s§:String;
      
      private static const §;y§:String;
      
      private static const §^!]§:String = "download-failed";
      
      private static const §!c§:String = "invalid-level";
      
      private static const §>2§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array;
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array;
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §`!D§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §[G§ = "level-selection";
            while(true)
            {
               §01§ = "registration-success";
               loop1:
               while(true)
               {
                  §&!l§ = "registration-failure";
                  while(true)
                  {
                     §=!$§ = "login-success";
                     continue loop1;
                     loop7:
                     while(!(_loc2_ && _loc1_))
                     {
                        § h§ = "level-powerup-used";
                        while(_loc1_ || _loc1_)
                        {
                           §9%§ = "warning";
                           loop9:
                           while(true)
                           {
                              §^!y§ = "user-statistics";
                              while(true)
                              {
                                 §6b§ = "error";
                                 loop11:
                                 while(true)
                                 {
                                    §-s§ = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
                                    loop12:
                                    while(true)
                                    {
                                       §;y§ = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
                                       loop13:
                                       while(true)
                                       {
                                          §^!]§ = "download-failed";
                                          while(true)
                                          {
                                             if(_loc1_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop9;
                                                }
                                                continue loop11;
                                             }
                                             continue loop13;
                                             addr98:
                                             if(_loc1_ || §[!-§)
                                             {
                                                continue loop12;
                                             }
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                                 if(!(_loc1_ || §[!-§))
                                 {
                                    continue;
                                 }
                                 if(_loc2_)
                                 {
                                    continue loop7;
                                 }
                                 sSample1Percent = false;
                                 §§goto(addr43);
                              }
                           }
                        }
                        while(true)
                        {
                           §;5§ = "powerup-used";
                           continue loop7;
                           §§goto(addr228);
                        }
                        addr228:
                     }
                  }
               }
               while(_loc1_ || _loc1_)
               {
                  §4§ = "framerate";
                  §§goto(addr252);
                  §§goto(addr112);
               }
            }
         }
         §§goto(addr119);
      }
      
      public function §[!-§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §2@§() : void
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
                  addr65:
                  while(true)
                  {
                  }
               }
               addr62:
            }
            while(Math.random() <= 0.01)
            {
               if(!_loc2_)
               {
                  if(_loc2_)
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     sSample1Percent = true;
                  }
                  else
                  {
                     §§goto(addr62);
                  }
               }
               break;
            }
            return;
         }
         §§goto(addr65);
      }
      
      public static function §[A§(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            §@v§(§+!a§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
         }
      }
      
      public static function §@v§(param1:String, param2:String = null, param3:int = 0, param4:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§5o§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS));
         if(_loc6_ || param3)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         if(!_loc7_)
         {
            §+!a§.trackSampledEvent(_loc5_,§<!0§,param1,param2,param3);
         }
      }
      
      public static function §`Y§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:* = null;
         if(_loc7_)
         {
            §§push(§`!D§);
            if(_loc7_)
            {
               if(§§pop().indexOf(param2) >= 0)
               {
                  if(_loc7_)
                  {
                     return;
                  }
                  addr31:
                  §§push(§`!D§);
               }
               §§goto(addr31);
            }
            var _loc5_:* = §§pop().length == 0;
            if(_loc7_ || param1)
            {
               §`!D§.push(param2);
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
                        §§push(§+!a§.ACTION_CPU_FPS_REPORT);
                        loop3:
                        while(true)
                        {
                           _loc6_ = §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(param4);
                              loop5:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          if(!_loc8_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc8_)
                                                {
                                                   if(_loc7_ || param3)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         if(!(_loc8_ && §[!-§))
                                                         {
                                                            if(_loc8_ && param3)
                                                            {
                                                               continue loop4;
                                                            }
                                                            §@v§(_loc6_,param1.toString(),param1);
                                                            loop14:
                                                            while(_loc7_)
                                                            {
                                                               while(true)
                                                               {
                                                                  § !I§(§4§,_loc6_,param2,param1);
                                                                  if(!(_loc8_ && §[!-§))
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop14;
                                                               }
                                                               return;
                                                            }
                                                            addr143:
                                                            if(!_loc7_)
                                                            {
                                                               break;
                                                            }
                                                            continue;
                                                            addr111:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§[!-§.§;y§);
                                                            }
                                                            addr164:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§push(param4);
                                                            addr116:
                                                            while(true)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               if(_loc8_)
                                                               {
                                                                  break;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  continue loop11;
                                                               }
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  §§push(§[!-§.§-s§);
                                                                  if(_loc7_)
                                                                  {
                                                                     if(!(_loc8_ && param3))
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        addr135:
                                                                        §§push(§§pop());
                                                                        if(_loc7_ || param3)
                                                                        {
                                                                           _loc6_ = §§pop();
                                                                           §§goto(addr143);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc8_ && param3))
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                              addr166:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 break loop13;
                                                                              }
                                                                           }
                                                                           addr152:
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr135);
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  continue loop2;
                                                               }
                                                            }
                                                            continue loop1;
                                                         }
                                                      }
                                                      §§goto(addr166);
                                                   }
                                                   §§goto(addr121);
                                                }
                                                §§goto(addr111);
                                             }
                                             §§goto(addr48);
                                          }
                                          §§goto(addr116);
                                       }
                                       continue loop0;
                                    }
                                    addr146:
                                 }
                                 §§goto(addr164);
                              }
                           }
                        }
                     }
                  }
                  else
                  {
                     §§push(§+!a§.ACTION_GPU_FPS_REPORT);
                  }
                  §§goto(addr152);
               }
            }
         }
         §§goto(addr31);
      }
      
      public static function §'!w§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            § !I§(§9%§,§^!]§,param1,0);
         }
      }
      
      public static function §'"'§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            while(§§pop() != null)
            {
               §§push(param1);
               if(_loc2_ || §[!-§)
               {
                  if(§§pop().length == 0)
                  {
                     if(!(_loc2_ || _loc3_))
                     {
                        break;
                     }
                     param1 = "[empty]";
                  }
                  loop2:
                  while(true)
                  {
                     § !I§(§9%§,§!c§,param1,0);
                     if(!_loc3_)
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
      
      public static function §6!P§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            § !I§(§9%§,§>2§,param1,0);
         }
      }
      
      public static function §7T§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            § !I§(§6b§,param1,"",0,false);
         }
      }
      
      private static function § !I§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:* = null;
         if(_loc7_ || §[!-§)
         {
            if(enabled)
            {
               loop0:
               while(true)
               {
                  §§push(§[3§);
                  loop1:
                  while(true)
                  {
                     _loc6_ = §§pop();
                     loop2:
                     while(true)
                     {
                        if(param5)
                        {
                           while(_loc7_)
                           {
                              §§push(§5o§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES));
                              if(!_loc8_)
                              {
                                 if(_loc8_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(§§pop());
                              }
                              _loc6_ = §§pop();
                              loop4:
                              while(!(_loc8_ && param1))
                              {
                                 while(true)
                                 {
                                    continue loop4;
                                 }
                              }
                              continue loop2;
                              if(_loc8_ && §[!-§)
                              {
                                 continue;
                              }
                              return;
                              addr63:
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           trackSampledEvent(_loc6_,param1,param2,param3,param4);
                           if(!(_loc8_ && param1))
                           {
                              §§goto(addr56);
                           }
                           §§goto(addr80);
                        }
                        §§goto(addr63);
                     }
                  }
               }
            }
            §§goto(addr27);
         }
         §§goto(addr97);
      }
      
      public static function §-!7§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§7l§());
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && §[!-§))
         {
            §&!Q§(§;5§,param1,param2,0);
            do
            {
               §&!Q§(§ h§,param2,param1,0);
            }
            while(_loc4_ && §[!-§);
            
         }
      }
      
      private static function §&!Q§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:* = null;
         if(_loc7_ || §[!-§)
         {
            if(enabled)
            {
               loop0:
               do
               {
                  §§push(§[3§);
                  loop1:
                  while(true)
                  {
                     _loc6_ = §§pop();
                     do
                     {
                        if(param5)
                        {
                           if(!_loc8_)
                           {
                              §§push(§5o§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES));
                              if(!(_loc8_ && param2))
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
                           if(_loc7_ || param2)
                           {
                              break;
                           }
                           §§goto(addr97);
                        }
                     }
                     while(_loc8_);
                     
                     continue loop0;
                  }
               }
               while(!(_loc7_ || param3));
               
            }
            return;
         }
         §§goto(addr97);
      }
      
      private static function §5o§(param1:String, param2:Array, param3:Array) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || §[!-§)
         {
            §§push(param3);
            loop0:
            while(true)
            {
               §§push(param1);
               addr79:
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
                  addr86:
                  while(true)
                  {
                     continue loop0;
                     addr59:
                     if(!(_loc4_ && param1))
                     {
                        addr25:
                        return §[3§;
                     }
                  }
               }
               return TRACKING_FUNCTION_1_PERCENT;
            }
         }
         §§goto(addr57);
      }
      
      private static function §%#§(param1:Array) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = null;
         if(!_loc8_)
         {
            §§push(param1);
            if(_loc7_ || _loc2_)
            {
               §§push(§§pop() == null);
               if(!(_loc8_ && param1))
               {
                  if(!§§pop())
                  {
                     if(_loc7_ || _loc2_)
                     {
                        addr47:
                        §§pop();
                        if(_loc7_ || param1)
                        {
                           §§goto(addr59);
                        }
                        §§goto(addr62);
                     }
                  }
                  addr59:
                  §§goto(addr56);
               }
               §§goto(addr47);
            }
            addr56:
            §§goto(addr55);
         }
         addr55:
         if(param1.length == 0)
         {
            if(_loc7_)
            {
               addr62:
               return null;
            }
         }
         var _loc2_:* = "";
         var _loc3_:Array = param1.concat();
         if(!_loc8_)
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
                  addr140:
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!(_loc7_ || §[!-§))
                     {
                        break;
                     }
                     if(§§pop().length > 0)
                     {
                        addr152:
                        §§push(_loc2_);
                        break;
                     }
                     addr159:
                     addr158:
                     §§push(_loc4_);
                     if(!(_loc8_ && _loc2_))
                     {
                        §§push(§§pop());
                     }
                     if(_loc7_ || _loc2_)
                     {
                        if(_loc8_ && _loc3_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     _loc2_ = §§pop();
                     if(!(_loc8_ && _loc3_))
                     {
                        break loop2;
                     }
                     continue loop2;
                  }
                  §§goto(addr158);
               }
               continue loop0;
            }
         }
         return _loc2_;
      }
      
      private static function §7l§(param1:int = 0) : int
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
