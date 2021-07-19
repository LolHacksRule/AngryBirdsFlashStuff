package §0!E§
{
   import flash.utils.getTimer;
   
   public class §-<§ extends §3"§
   {
      
      public static const §,2§:String = "level-selection";
      
      public static const §[!'§:String = "abfriends-link-click";
      
      public static const §]!%§:String = "slingshot-drag-start";
      
      private static const §-c§:Boolean;
      
      private static const §9§:String = "framerate";
      
      private static const §>'§:String = "warning";
      
      private static const §&H§:String = "user-statistics";
      
      private static const § $§:String = "error";
      
      private static const §>!P§:String;
      
      private static const §^H§:String;
      
      private static const §>!J§:String = "download-failed";
      
      private static const §-m§:String = "invalid-level";
      
      private static const §+!=§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array;
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array;
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §+a§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §,2§ = "level-selection";
            §[!'§ = "abfriends-link-click";
            §]!%§ = "slingshot-drag-start";
            §-c§ = §!D§.§^!E§;
            §9§ = "framerate";
            loop0:
            while(true)
            {
               §>'§ = "warning";
               loop1:
               while(true)
               {
                  §&H§ = "user-statistics";
                  § $§ = "error";
                  loop2:
                  for(; _loc1_; while(!(_loc2_ && §-<§))
                  {
                     sSample10Percent = false;
                     loop13:
                     while(_loc1_)
                     {
                        sSample1Percent = false;
                        while(true)
                        {
                           if(_loc1_)
                           {
                              if(!_loc1_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop13;
                        }
                        §§goto(addr145);
                     }
                     §§goto(addr77);
                     if(!(_loc2_ && _loc1_))
                     {
                        continue loop1;
                     }
                  })
                  {
                     §>!P§ = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
                     while(true)
                     {
                        §^H§ = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
                        while(true)
                        {
                           §>!J§ = "download-failed";
                           loop5:
                           while(true)
                           {
                              §-m§ = "invalid-level";
                              addr145:
                              while(true)
                              {
                                 §+!=§ = "flash-var-missing";
                                 continue loop5;
                              }
                           }
                           loop10:
                           while(_loc1_ || _loc1_)
                           {
                              SAMPLE_100_PERCENT_CATEGORIES = [§ $§];
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    addr79:
                                    if(_loc2_ && _loc2_)
                                    {
                                       break;
                                    }
                                    FULL_SCREEN = "-full-screen";
                                    continue loop2;
                                 }
                                 continue loop10;
                              }
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    while(true)
                                    {
                                       SAMPLE_1_PERCENT_CATEGORIES = [§9§];
                                       continue loop10;
                                    }
                                    return;
                                    addr43:
                                    addr119:
                                 }
                                 break;
                                 §§goto(addr79);
                              }
                              §§goto(addr140);
                           }
                        }
                        if(!(_loc1_ || _loc1_))
                        {
                           continue;
                        }
                        SAMPLE_100_PERCENT_FLASH_ACTIONS = [ACTION_APPLICATION_CRASH,§>-§,§]#§];
                        §§goto(addr117);
                     }
                  }
                  continue loop0;
                  if(!(_loc1_ || _loc2_))
                  {
                     continue;
                  }
                  §§goto(addr43);
               }
            }
         }
         §§goto(addr119);
      }
      
      public function §-<§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function §8!!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §-<§)
         {
            if(Math.random() <= 0.1)
            {
               if(!_loc1_)
               {
                  sSample10Percent = true;
                  addr76:
                  while(true)
                  {
                  }
                  addr76:
               }
               §§goto(addr76);
            }
            while(Math.random() <= 0.01)
            {
               if(_loc2_ || §-<§)
               {
                  if(!_loc2_)
                  {
                     continue;
                  }
                  sSample1Percent = true;
               }
               break;
            }
            return;
         }
         §§goto(addr76);
      }
      
      public static function §]S§(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §>v§(§3"§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
         }
      }
      
      public static function §>v§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§]H§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS));
         if(!(_loc6_ && param1))
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         if(_loc5_ || param3)
         {
            §3"§.trackSampledEvent(_loc4_,§`0§,param1,param2,param3);
         }
      }
      
      public static function §`q§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:* = null;
         if(_loc7_)
         {
            §§push(§+a§);
            if(_loc7_)
            {
               if(§§pop().indexOf(param2) >= 0)
               {
                  if(!_loc8_)
                  {
                     §§goto(addr30);
                  }
               }
               §§push(§+a§);
            }
            var _loc5_:* = §§pop().length == 0;
            §+a§.push(param2);
            while(true)
            {
               §§push(param3);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     addr155:
                     while(true)
                     {
                        §§push(§3"§.ACTION_CPU_FPS_REPORT);
                     }
                     addr155:
                  }
                  else
                  {
                     §§push(§3"§.ACTION_GPU_FPS_REPORT);
                     loop2:
                     while(true)
                     {
                        _loc6_ = §§pop();
                        §§push(param4);
                        loop3:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              continue;
                           }
                           §§push(§-<§.§>!P§);
                           if(!(_loc8_ && param1))
                           {
                              continue loop2;
                           }
                           addr102:
                           if(!(_loc8_ && §-<§))
                           {
                              _loc6_ = §§pop();
                              while(true)
                              {
                                 if(!_loc8_)
                                 {
                                    continue loop3;
                                 }
                                 addr151:
                                 while(true)
                                 {
                                    addr113:
                                    while(true)
                                    {
                                       continue loop3;
                                    }
                                 }
                                 addr62:
                                 if(§§pop())
                                 {
                                    §>v§(_loc6_,param1.toString(),param1);
                                 }
                                 §?,§(§9§,_loc6_,param2,param1);
                                 if(!_loc8_)
                                 {
                                    return;
                                 }
                              }
                           }
                        }
                     }
                  }
                  addr158:
                  while(true)
                  {
                     _loc6_ = §§pop();
                     §§push(param4);
                     continue loop1;
                     §§goto(addr155);
                  }
               }
            }
         }
         addr30:
      }
      
      public static function §7I§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §?,§(§>'§,§>!J§,param1,0);
         }
      }
      
      public static function §%j§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(param1);
            loop0:
            while(§§pop() != null)
            {
               §§push(param1);
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
               if(§§pop().length == 0)
               {
                  while(true)
                  {
                     §§push("[empty]");
                     if(_loc3_ || _loc2_)
                     {
                        param1 = §§pop();
                        loop2:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              if(!_loc3_)
                              {
                                 break loop0;
                              }
                              continue;
                           }
                           addr99:
                           while(true)
                           {
                              continue loop2;
                           }
                        }
                     }
                     addr98:
                     while(true)
                     {
                        param1 = §§pop();
                        §§goto(addr99);
                     }
                  }
               }
               §§goto(addr29);
            }
            while(true)
            {
               §§goto(addr98);
            }
         }
         §§goto(addr55);
      }
      
      public static function §0O§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §?,§(§>'§,§+!=§,param1,0);
         }
      }
      
      public static function §6!#§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §?,§(§ $§,param1,"",0,false);
         }
      }
      
      private static function §?,§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:* = null;
         if(!_loc7_)
         {
            if(enabled)
            {
               if(!(_loc7_ && param3))
               {
                  §§push(§=Z§);
                  while(true)
                  {
                     _loc6_ = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(§]H§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES));
                        if(!(_loc7_ && param2))
                        {
                           §§push(§§pop());
                        }
                        if(_loc7_)
                        {
                           break;
                        }
                        _loc6_ = §§pop();
                        loop3:
                        while(_loc8_ || param1)
                        {
                           while(true)
                           {
                              trackSampledEvent(_loc6_,param1,param2,param3,param4);
                              if(!(_loc7_ && param1))
                              {
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                                 continue loop2;
                              }
                              continue loop3;
                           }
                           return;
                        }
                        while(true)
                        {
                           if(param5)
                           {
                              continue loop2;
                           }
                           §§goto(addr27);
                        }
                     }
                  }
               }
               §§goto(addr104);
            }
         }
         §§goto(addr23);
      }
      
      private static function §]H§(param1:String, param2:Array, param3:Array) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && §-<§))
         {
            §§push(param3);
            loop0:
            while(true)
            {
               §§push(param1);
               addr85:
               addr88:
               while(§§pop().indexOf(§§pop()) < 0)
               {
                  continue loop0;
               }
               addr88:
               return TRACKING_FUNCTION_1_PERCENT;
            }
         }
         §§goto(addr82);
      }
      
      private static function §+!G§(param1:Array) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = null;
         if(_loc7_ || _loc2_)
         {
            §§push(param1);
            if(_loc7_ || _loc2_)
            {
               §§push(§§pop() == null);
               if(!(_loc8_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     if(_loc7_ || §-<§)
                     {
                        §§pop();
                        §§goto(addr84);
                     }
                  }
               }
               if(§§pop())
               {
                  if(_loc7_ || param1)
                  {
                     return null;
                  }
                  §§goto(addr84);
               }
               §§goto(addr84);
            }
            §§goto(addr61);
         }
         addr84:
         if(_loc7_ || §-<§)
         {
            addr61:
            §§push(param1.length == 0);
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
            do
            {
               _loc4_ = §§pop();
               loop2:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc8_)
                     {
                        break;
                     }
                     if(§§pop().length <= 0)
                     {
                        §§push(_loc4_);
                        if(_loc7_)
                        {
                           §§push(§§pop());
                        }
                        if(!(_loc8_ && param1))
                        {
                           _loc2_ = §§pop();
                           if(_loc7_)
                           {
                              if(_loc7_ || param1)
                              {
                                 if(false)
                                 {
                                    continue;
                                 }
                                 continue loop0;
                              }
                              addr133:
                              if(!_loc7_)
                              {
                                 continue loop2;
                              }
                              §§push(_loc2_);
                              if(!_loc8_)
                              {
                                 break;
                              }
                              addr162:
                              addr162:
                              _loc2_ = §§pop();
                           }
                           continue loop0;
                        }
                        §§goto(addr162);
                     }
                     §§goto(addr133);
                  }
                  continue loop1;
               }
            }
            while(!(_loc7_ || param1));
            
            §§push("-");
            if(_loc7_)
            {
               §§push(§§pop() + _loc4_);
            }
            §§goto(addr162);
            §§push(§§pop() + §§pop());
         }
         return _loc2_;
      }
      
      private static function §18§(param1:int = 0) : int
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
