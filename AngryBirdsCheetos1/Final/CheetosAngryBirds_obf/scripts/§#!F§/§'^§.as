package §#!F§
{
   import flash.utils.getTimer;
   
   public class §'^§ extends §"!L§
   {
      
      private static const §[f§:Boolean;
      
      private static const §%8§:String = "framerate";
      
      private static const §<l§:String = "warning";
      
      private static const §"2§:String = "user-statistics";
      
      private static const §+P§:String = "error";
      
      private static const §]! §:String;
      
      private static const §%&§:String;
      
      private static const §]b§:String = "download-failed";
      
      private static const §with§:String = "invalid-level";
      
      private static const §>%§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array;
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array;
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §]f§:Array;
      
      public static const §"'§:String = "level-selection";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §[f§ = §#x§.§9h§;
            loop0:
            while(true)
            {
               §%8§ = "framerate";
               while(true)
               {
                  §<l§ = "warning";
                  while(true)
                  {
                     §"2§ = "user-statistics";
                     loop3:
                     while(true)
                     {
                        §+P§ = "error";
                        while(true)
                        {
                           §]! § = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
                           loop5:
                           while(true)
                           {
                              §%&§ = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
                              addr164:
                              while(_loc2_)
                              {
                                 if(!_loc1_)
                                 {
                                    §]b§ = "download-failed";
                                    continue loop5;
                                 }
                                 continue loop0;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            SAMPLE_100_PERCENT_FLASH_ACTIONS = [ACTION_APPLICATION_CRASH,§;!O§,§#!7§];
            §§goto(addr122);
         }
      }
      
      public function §'^§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §0!"§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §'^§)
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
            while(Math.random() <= 0.01)
            {
               if(_loc2_ || _loc2_)
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     sSample1Percent = true;
                  }
                  else
                  {
                     §§goto(addr78);
                  }
               }
               if(!_loc1_)
               {
                  break;
               }
               §§goto(addr81);
            }
            return;
         }
         §§goto(addr78);
      }
      
      public static function §,[§(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §`0§(§"!L§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
         }
      }
      
      public static function §`0§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§-!T§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS));
         if(_loc6_ || param3)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         if(!(_loc5_ && param3))
         {
            §"!L§.trackSampledEvent(_loc4_,§!!R§,param1,param2,param3);
         }
      }
      
      public static function §>?§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:* = null;
         if(_loc8_ || param3)
         {
            §§push(§]f§);
            if(_loc8_ || §'^§)
            {
               if(§§pop().indexOf(param2) >= 0)
               {
                  if(!(_loc7_ && param1))
                  {
                     return;
                  }
                  addr47:
                  §§push(§]f§);
               }
               §§goto(addr47);
            }
            var _loc5_:* = §§pop().length == 0;
            if(_loc8_ || param1)
            {
               §]f§.push(param2);
               loop0:
               while(true)
               {
                  §§push(param3);
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(§"!L§.ACTION_CPU_FPS_REPORT);
                           loop7:
                           while(true)
                           {
                              _loc6_ = §§pop();
                              while(true)
                              {
                                 §§push(param4);
                                 loop9:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          addr97:
                                          while(true)
                                          {
                                             §§push(_loc5_);
                                             if(_loc7_)
                                             {
                                                break;
                                             }
                                             continue loop9;
                                          }
                                          loop4:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                continue;
                                             }
                                             while(true)
                                             {
                                                §§push(§'^§.§]! §);
                                                if(_loc8_)
                                                {
                                                   addr141:
                                                   if(!(_loc8_ || §'^§))
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop());
                                                }
                                                if(!(_loc7_ && param2))
                                                {
                                                   if(_loc7_ && param1)
                                                   {
                                                      continue loop7;
                                                   }
                                                   _loc6_ = §§pop();
                                                   while(true)
                                                   {
                                                      continue loop4;
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      _loc6_ = §§pop();
                                                      continue loop0;
                                                   }
                                                   addr188:
                                                }
                                             }
                                             while(true)
                                             {
                                                if(!(_loc7_ && param2))
                                                {
                                                   _loc6_ = §§pop();
                                                   while(true)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         §§push(param4);
                                                         continue loop4;
                                                      }
                                                      addr185:
                                                      while(true)
                                                      {
                                                         §§push(§'^§.§%&§);
                                                      }
                                                   }
                                                   addr179:
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr188);
                                                }
                                                §§goto(addr141);
                                             }
                                          }
                                       }
                                       addr165:
                                    }
                                    §§goto(addr185);
                                 }
                              }
                           }
                        }
                        addr210:
                     }
                     else
                     {
                        §§push(§"!L§.ACTION_GPU_FPS_REPORT);
                     }
                     §§goto(addr171);
                  }
               }
            }
            §§goto(addr210);
         }
         §§goto(addr47);
      }
      
      public static function §??§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §-!2§(§<l§,§]b§,param1,0);
         }
      }
      
      public static function §2!R§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            while(§§pop() != null)
            {
               §§push(param1);
               if(_loc3_)
               {
                  if(§§pop().length == 0)
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     param1 = "[empty]";
                  }
                  loop2:
                  while(true)
                  {
                     §-!2§(§<l§,§with§,param1,0);
                     if(!_loc2_)
                     {
                        break;
                     }
                     addr73:
                     while(true)
                     {
                        continue loop2;
                     }
                  }
                  return;
               }
            }
            param1 = "[null]";
            §§goto(addr73);
         }
         §§goto(addr65);
      }
      
      public static function §7!=§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && §'^§))
         {
            §-!2§(§<l§,§>%§,param1,0);
         }
      }
      
      public static function §10§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §-!2§(§+P§,param1,"",0,false);
         }
      }
      
      private static function §-!2§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:* = null;
         if(_loc8_)
         {
            if(enabled)
            {
               loop0:
               while(true)
               {
                  §§push(§9t§);
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
                              if(_loc7_ && §'^§)
                              {
                                 continue loop0;
                              }
                           }
                           while(_loc7_ && param3);
                           
                           addr23:
                           return;
                           addr27:
                        }
                        while(_loc8_)
                        {
                           §§push(§-!T§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES));
                           if(_loc8_ || param3)
                           {
                              §§push(§§pop());
                           }
                           if(!(_loc7_ && param2))
                           {
                              _loc6_ = §§pop();
                              continue loop0;
                           }
                           continue loop1;
                           §§goto(addr42);
                        }
                     }
                  }
               }
            }
            §§goto(addr23);
         }
         §§goto(addr103);
      }
      
      private static function §-!T§(param1:String, param2:Array, param3:Array) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            §§push(param3);
            loop0:
            while(true)
            {
               §§push(param1);
               addr84:
               do
               {
                  if(§§pop().indexOf(§§pop()) < 0)
                  {
                     continue loop0;
                  }
               }
               while(_loc4_);
               
               return TRACKING_FUNCTION_1_PERCENT;
            }
         }
         §§goto(addr91);
      }
      
      private static function §#S§(param1:Array) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = null;
         if(!(_loc8_ && _loc2_))
         {
            §§push(param1);
            if(!_loc8_)
            {
               §§push(§§pop() == null);
               if(!_loc8_)
               {
                  if(!§§pop())
                  {
                     if(!_loc8_)
                     {
                        §§pop();
                        §§goto(addr52);
                     }
                  }
               }
               if(§§pop())
               {
                  if(!_loc8_)
                  {
                     §§goto(addr52);
                  }
               }
               var _loc2_:* = "";
               var _loc3_:Array = param1.concat();
               if(_loc7_ || §'^§)
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
                           while(true)
                           {
                              if(§§pop().length > 0)
                              {
                                 break loop2;
                              }
                              §§push(_loc4_);
                              if(!_loc8_)
                              {
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    if(_loc7_ || §'^§)
                                    {
                                       addr106:
                                       §§push(§§pop());
                                       if(_loc7_ || _loc3_)
                                       {
                                          if(!_loc7_)
                                          {
                                             break loop3;
                                          }
                                          _loc2_ = §§pop();
                                          if(_loc8_ && param1)
                                          {
                                             break;
                                          }
                                          if(!(_loc8_ && _loc2_))
                                          {
                                             if(false)
                                             {
                                                continue loop3;
                                             }
                                             continue loop0;
                                          }
                                          continue loop2;
                                       }
                                       continue;
                                    }
                                    addr145:
                                    §§push(§§pop() + ("-" + _loc4_));
                                 }
                                 _loc2_ = §§pop();
                                 break;
                              }
                              §§goto(addr106);
                           }
                           addr151:
                           continue loop0;
                        }
                        continue loop1;
                     }
                     if(_loc7_ || _loc2_)
                     {
                        §§goto(addr145);
                        §§push(_loc2_);
                     }
                     §§goto(addr151);
                  }
               }
               return _loc2_;
            }
            §§goto(addr46);
         }
         addr52:
         if(!(_loc8_ && _loc2_))
         {
            addr46:
            §§push(param1.length == 0);
         }
         return null;
      }
      
      private static function §-"§(param1:int = 0) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(getTimer() / 1000);
         if(_loc3_ || §'^§)
         {
            return §§pop() - param1;
         }
      }
   }
}
