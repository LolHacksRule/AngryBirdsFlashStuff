package §'@§
{
   import flash.utils.getTimer;
   
   public class §4&§ extends §4!n§
   {
      
      private static const §7F§:Boolean;
      
      private static const §^!n§:String = "framerate";
      
      private static const §'!§:String = "warning";
      
      private static const §var§:String = "user-statistics";
      
      private static const §[!&§:String = "error";
      
      private static const §^""§:String;
      
      private static const §"!n§:String;
      
      private static const §+`§:String = "download-failed";
      
      private static const §+!3§:String = "invalid-level";
      
      private static const §8!e§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array;
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array;
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §#!2§:Array;
      
      public static const §`E§:String = "quest-started";
      
      public static const §^!X§:String = "quest-completed";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §7F§ = §>"§.§>3§;
            loop0:
            while(true)
            {
               §^!n§ = "framerate";
               loop1:
               while(true)
               {
                  §'!§ = "warning";
                  loop2:
                  while(true)
                  {
                     §var§ = "user-statistics";
                     while(true)
                     {
                        §[!&§ = "error";
                        continue loop2;
                        while(_loc2_ || _loc2_)
                        {
                           sSample10Percent = false;
                           while(true)
                           {
                              sSample1Percent = false;
                              continue loop1;
                           }
                           addr77:
                           if(!(_loc2_ || §4&§))
                           {
                              continue;
                           }
                           if(!_loc1_)
                           {
                              §`E§ = "quest-started";
                              loop19:
                              while(true)
                              {
                                 if(_loc2_ || §4&§)
                                 {
                                    addr42:
                                    if(!(_loc2_ || §4&§))
                                    {
                                       continue loop1;
                                    }
                                    addr49:
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       addr56:
                                       if(!(_loc2_ || _loc2_))
                                       {
                                          break;
                                       }
                                       addr63:
                                       if(!(_loc1_ && §4&§))
                                       {
                                          continue;
                                       }
                                       while(!_loc1_)
                                       {
                                          while(true)
                                          {
                                             §+!3§ = "invalid-level";
                                             loop9:
                                             while(true)
                                             {
                                                §8!e§ = "flash-var-missing";
                                                while(true)
                                                {
                                                   SAMPLE_1_PERCENT_FLASH_ACTIONS = [§^",§,§]!y§,§`E§,§^!X§];
                                                   break loop19;
                                                   addr164:
                                                   while(!(_loc1_ && _loc1_))
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         SAMPLE_1_PERCENT_CATEGORIES = [];
                                                         continue loop9;
                                                      }
                                                      continue loop2;
                                                      §§goto(addr49);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr63);
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr164);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          §§goto(addr77);
                                       }
                                       else
                                       {
                                          §§goto(addr103);
                                       }
                                    }
                                    addr75:
                                 }
                              }
                              while(!_loc1_)
                              {
                                 SAMPLE_100_PERCENT_FLASH_ACTIONS = [ACTION_APPLICATION_CRASH,§3!c§,§'"&§];
                                 §§goto(addr164);
                                 §§goto(addr56);
                              }
                              while(true)
                              {
                                 §"!n§ = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
                                 §§goto(addr208);
                              }
                              addr215:
                           }
                           §§goto(addr135);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr201);
      }
      
      public function §4&§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §5"3§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §4&§)
         {
            if(Math.random() <= 0.1)
            {
               addr83:
               while(true)
               {
                  sSample10Percent = true;
                  addr86:
                  while(true)
                  {
                  }
               }
               addr83:
            }
            for(; Math.random() <= 0.01; §§goto(addr86))
            {
               if(!(_loc1_ && _loc1_))
               {
                  sSample1Percent = true;
               }
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               if(_loc2_ || §4&§)
               {
                  break;
               }
               §§goto(addr83);
            }
            return;
         }
         §§goto(addr83);
      }
      
      public static function §;"?§(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || §4&§)
         {
            §@!Q§(§4!n§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
         }
      }
      
      public static function §@!Q§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§"?§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS));
         if(!_loc6_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         if(_loc5_ || param1)
         {
            §4!n§.trackSampledEvent(_loc4_,§@$§,param1,param2,param3);
         }
      }
      
      public static function §8"7§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:* = null;
         if(!_loc7_)
         {
            §§push(§#!2§);
            if(_loc8_ || param1)
            {
               if(§§pop().indexOf(param2) >= 0)
               {
                  if(!(_loc7_ && param2))
                  {
                     return;
                  }
                  addr42:
                  §§push(§#!2§);
               }
               §§goto(addr42);
            }
            var _loc5_:* = §§pop().length == 0;
            if(!(_loc7_ && param2))
            {
               §#!2§.push(param2);
               loop0:
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
                           §§push(§4!n§.ACTION_CPU_FPS_REPORT);
                           loop3:
                           while(true)
                           {
                              _loc6_ = §§pop();
                              addr224:
                              while(true)
                              {
                                 §§push(param4);
                                 loop5:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       continue loop0;
                                    }
                                    loop10:
                                    while(true)
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          if(_loc8_)
                                          {
                                             continue loop5;
                                          }
                                          loop15:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                continue loop11;
                                             }
                                             if(!_loc7_)
                                             {
                                                if(_loc8_ || param2)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§4&§.§^""§);
                                                      if(!(_loc7_ && param3))
                                                      {
                                                         addr151:
                                                         if(!(_loc7_ && §4&§))
                                                         {
                                                            addr159:
                                                            §§push(§§pop());
                                                            if(!_loc7_)
                                                            {
                                                               _loc6_ = §§pop();
                                                               addr162:
                                                               while(true)
                                                               {
                                                                  if(!(_loc8_ || §4&§))
                                                                  {
                                                                     break loop11;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               addr162:
                                                            }
                                                            else
                                                            {
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  if(!(_loc8_ || §4&§))
                                                                  {
                                                                     while(_loc8_ || param3)
                                                                     {
                                                                        §§push(§§pop());
                                                                        continue loop16;
                                                                     }
                                                                     continue loop3;
                                                                     addr197:
                                                                  }
                                                                  addr183:
                                                                  _loc6_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     continue loop15;
                                                                     §§goto(addr183);
                                                                  }
                                                               }
                                                               addr176:
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            _loc6_ = §§pop();
                                                            addr206:
                                                            while(true)
                                                            {
                                                               continue loop10;
                                                            }
                                                            §§goto(addr151);
                                                         }
                                                      }
                                                      §§goto(addr159);
                                                   }
                                                }
                                                §§goto(addr206);
                                             }
                                             §§goto(addr162);
                                          }
                                          continue loop2;
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     else
                     {
                        §§push(§4!n§.ACTION_GPU_FPS_REPORT);
                     }
                     §§goto(addr176);
                     if(_loc7_ && param3)
                     {
                        continue;
                     }
                     if(§§pop())
                     {
                        if(!(_loc7_ && param2))
                        {
                           if(_loc8_ || param1)
                           {
                              §@!Q§(_loc6_,param1.toString(),param1);
                              loop12:
                              while(_loc8_ || param2)
                              {
                                 while(true)
                                 {
                                    §9L§(§^!n§,_loc6_,param2,param1);
                                    if(!_loc8_)
                                    {
                                       continue loop12;
                                    }
                                    if(!_loc7_)
                                    {
                                       return;
                                    }
                                    §§goto(addr184);
                                 }
                              }
                              §§goto(addr162);
                              addr120:
                           }
                           §§goto(addr224);
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr59);
                  }
               }
            }
            §§goto(addr142);
         }
         §§goto(addr42);
      }
      
      public static function §0"4§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §9L§(§'!§,§+`§,param1,0);
         }
      }
      
      public static function §,d§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(param1);
            while(§§pop() != null)
            {
               §§push(param1);
               if(!_loc3_)
               {
                  if(§§pop().length == 0)
                  {
                     if(_loc3_ && _loc2_)
                     {
                        break;
                     }
                     param1 = "[empty]";
                  }
                  loop2:
                  while(true)
                  {
                     §9L§(§'!§,§+!3§,param1,0);
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
      
      public static function §3N§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §9L§(§'!§,§8!e§,param1,0);
         }
      }
      
      public static function §2!r§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §9L§(§[!&§,param1,"",0,false);
         }
      }
      
      private static function §9L§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
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
                  §§push(§#,§);
                  addr103:
                  while(true)
                  {
                     _loc6_ = §§pop();
                     loop2:
                     while(param5)
                     {
                        if(_loc8_ || §4&§)
                        {
                           if(_loc8_ || param1)
                           {
                              continue loop0;
                           }
                           continue;
                        }
                        addr98:
                        addr98:
                        while(true)
                        {
                           break loop2;
                        }
                     }
                     while(true)
                     {
                        trackSampledEvent(_loc6_,param1,param2,param3,param4);
                        if(_loc8_)
                        {
                           break;
                        }
                        §§goto(addr98);
                     }
                  }
               }
               addr101:
            }
            return;
         }
         §§goto(addr101);
      }
      
      private static function §"?§(param1:String, param2:Array, param3:Array) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
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
                     if(!(_loc5_ && param1))
                     {
                        break;
                     }
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
                        if(_loc4_ || param3)
                        {
                           if(§§pop().indexOf(§§pop()) < 0)
                           {
                              if(_loc5_)
                              {
                                 break;
                              }
                              if(_loc4_)
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
                  return §#,§;
               }
            }
         }
         return TRACKING_FUNCTION_1_PERCENT;
      }
      
      private static function §%";§(param1:Array) : String
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = null;
         if(!(_loc7_ && _loc2_))
         {
            §§push(param1);
            if(!_loc7_)
            {
               §§push(§§pop() == null);
               if(!(_loc7_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     if(_loc8_ || §4&§)
                     {
                        addr48:
                        §§pop();
                        §§goto(addr60);
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
                  addr60:
                  if(!_loc7_)
                  {
                     addr52:
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
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop());
                                 }
                                 if(!_loc7_)
                                 {
                                    if(_loc8_)
                                    {
                                       if(_loc8_)
                                       {
                                          _loc2_ = §§pop();
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             if(!(_loc8_ || _loc2_))
                                             {
                                                break;
                                             }
                                             if(false)
                                             {
                                                continue loop3;
                                             }
                                             continue loop0;
                                          }
                                          addr135:
                                          if(!(_loc7_ && §4&§))
                                          {
                                             break loop2;
                                          }
                                          continue loop2;
                                       }
                                       continue;
                                    }
                                    addr127:
                                    §§push(§§pop() + ("-" + _loc4_));
                                 }
                                 if(!_loc8_)
                                 {
                                    continue loop1;
                                 }
                                 _loc2_ = §§pop();
                                 §§goto(addr135);
                              }
                              §§goto(addr127);
                           }
                        }
                        continue loop0;
                     }
                  }
                  return _loc2_;
               }
               §§goto(addr48);
            }
            §§goto(addr52);
         }
         §§goto(addr48);
      }
      
      private static function §=!t§(param1:int = 0) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(getTimer() / 1000);
         if(_loc2_ || _loc2_)
         {
            return §§pop() - param1;
         }
      }
   }
}
