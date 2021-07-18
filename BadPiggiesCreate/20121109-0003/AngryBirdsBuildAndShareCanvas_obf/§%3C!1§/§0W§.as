package §<!1§
{
   import flash.utils.getTimer;
   
   public class §0W§ extends §&%§
   {
      
      private static const §#"'§:Boolean;
      
      private static const §9a§:String = "framerate";
      
      private static const §;!x§:String = "warning";
      
      private static const §7!o§:String = "user-statistics";
      
      private static const §"x§:String = "error";
      
      private static const §;y§:String;
      
      private static const §#",§:String;
      
      private static const §0!2§:String = "download-failed";
      
      private static const §99§:String = "invalid-level";
      
      private static const §%T§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array;
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array;
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §8"9§:Array;
      
      public static const §,!G§:String = "quest-started";
      
      public static const §;K§:String = "quest-completed";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §0W§))
         {
            §#"'§ = §[!^§.§^q§;
            loop0:
            while(true)
            {
               §9a§ = "framerate";
               loop1:
               while(true)
               {
                  §;!x§ = "warning";
                  while(true)
                  {
                     §7!o§ = "user-statistics";
                     loop12:
                     while(!(_loc2_ && §0W§))
                     {
                        SAMPLE_100_PERCENT_CATEGORIES = [§"x§,§^R§,§9a§,§7!o§,§;!x§];
                        do
                        {
                           FULL_SCREEN = "-full-screen";
                           loop14:
                           while(!_loc2_)
                           {
                              sSample10Percent = false;
                              while(true)
                              {
                                 if(_loc1_ || _loc1_)
                                 {
                                    if(_loc1_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop12;
                                 }
                                 continue loop14;
                              }
                              continue loop1;
                           }
                           addr204:
                           while(_loc1_ || _loc1_)
                           {
                              §;y§ = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
                              while(true)
                              {
                                 §#",§ = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
                                 loop6:
                                 while(true)
                                 {
                                    §0!2§ = "download-failed";
                                    while(true)
                                    {
                                       §99§ = "invalid-level";
                                       while(true)
                                       {
                                          if(_loc1_)
                                          {
                                             §%T§ = "flash-var-missing";
                                             loop9:
                                             while(_loc1_)
                                             {
                                                SAMPLE_1_PERCENT_FLASH_ACTIONS = [§+S§,§,!@§,§,!G§,§;K§];
                                                loop10:
                                                while(true)
                                                {
                                                   SAMPLE_100_PERCENT_FLASH_ACTIONS = [ACTION_APPLICATION_CRASH,§2v§,§!!`§];
                                                   while(!_loc2_)
                                                   {
                                                      SAMPLE_1_PERCENT_CATEGORIES = [];
                                                      continue loop12;
                                                      if(_loc1_ || §0W§)
                                                      {
                                                         continue loop10;
                                                      }
                                                   }
                                                   continue loop9;
                                                }
                                             }
                                             continue loop6;
                                          }
                                          continue loop0;
                                       }
                                    }
                                 }
                                 if(_loc2_ && §0W§)
                                 {
                                    continue;
                                 }
                                 §8"9§ = [];
                                 §§goto(addr78);
                              }
                           }
                           while(true)
                           {
                              §"x§ = "error";
                              §§goto(addr204);
                           }
                        }
                        while(_loc2_);
                        
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr216);
      }
      
      public function §0W§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §5!N§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §0W§))
         {
            if(Math.random() <= 0.1)
            {
               if(!(_loc2_ && _loc2_))
               {
                  sSample10Percent = true;
                  addr80:
                  while(true)
                  {
                  }
                  addr80:
               }
               §§goto(addr80);
            }
            while(Math.random() <= 0.01)
            {
               if(!_loc2_)
               {
                  if(_loc2_ && §0W§)
                  {
                     continue;
                  }
                  sSample1Percent = true;
               }
               break;
            }
            return;
         }
         §§goto(addr80);
      }
      
      public static function §!7§(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §#W§(§&%§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
         }
      }
      
      public static function §#W§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§]!h§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS));
         if(!(_loc5_ && §0W§))
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         if(!_loc5_)
         {
            §&%§.trackSampledEvent(_loc4_,§^R§,param1,param2,param3);
         }
      }
      
      public static function §8"!§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:* = null;
         if(_loc7_ || param1)
         {
            §§push(§8"9§);
            if(!(_loc8_ && param1))
            {
               if(§§pop().indexOf(param2) >= 0)
               {
                  if(!_loc8_)
                  {
                     §§goto(addr40);
                  }
               }
               §§push(§8"9§);
            }
            var _loc5_:* = §§pop().length == 0;
            if(_loc7_ || param2)
            {
               §8"9§.push(param2);
               loop0:
               while(true)
               {
                  §§push(param3);
                  while(true)
                  {
                     if(§§pop())
                     {
                        continue loop0;
                     }
                     §§push(§&%§.ACTION_GPU_FPS_REPORT);
                     loop2:
                     while(true)
                     {
                        _loc6_ = §§pop();
                        while(true)
                        {
                           if(_loc7_ || param3)
                           {
                              §§push(param4);
                              loop4:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(§0W§.§;y§);
                                       if(_loc8_)
                                       {
                                          continue loop2;
                                       }
                                       if(!(_loc8_ && §0W§))
                                       {
                                          §§push(§§pop());
                                          continue loop2;
                                       }
                                       loop6:
                                       while(true)
                                       {
                                          if(_loc7_ || param2)
                                          {
                                             §§push(§§pop());
                                             while(true)
                                             {
                                                _loc6_ = §§pop();
                                                addr198:
                                                while(true)
                                                {
                                                }
                                             }
                                             addr197:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                _loc6_ = §§pop();
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(param4);
                                                   addr172:
                                                   addr173:
                                                   while(!§§pop())
                                                   {
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc7_ || §0W§)
                                                      {
                                                         if(!(_loc8_ && §0W§))
                                                         {
                                                            continue loop6;
                                                         }
                                                         continue loop0;
                                                      }
                                                      continue loop8;
                                                   }
                                                }
                                                addr209:
                                             }
                                          }
                                          while(true)
                                          {
                                             continue loop4;
                                          }
                                       }
                                    }
                                    continue loop2;
                                    addr125:
                                 }
                              }
                           }
                           §§goto(addr173);
                        }
                     }
                  }
               }
            }
            §§goto(addr198);
         }
         addr40:
      }
      
      public static function §#"8§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §7"<§(§;!x§,§0!2§,param1,0);
         }
      }
      
      public static function §;"$§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(param1);
            while(§§pop() != null)
            {
               §§push(param1);
               if(!_loc2_)
               {
                  if(§§pop().length == 0)
                  {
                     if(!(_loc3_ || §0W§))
                     {
                        break;
                     }
                     param1 = "[empty]";
                  }
                  loop2:
                  while(true)
                  {
                     §7"<§(§;!x§,§99§,param1,0);
                     if(!(_loc2_ && _loc2_))
                     {
                        break;
                     }
                     addr88:
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
         §§goto(addr88);
      }
      
      public static function §?!=§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §7"<§(§;!x§,§%T§,param1,0);
         }
      }
      
      public static function § !0§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §7"<§(§"x§,param1,"",0,false);
         }
      }
      
      private static function §7"<§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:* = null;
         if(_loc7_ || §0W§)
         {
            if(enabled)
            {
               loop0:
               while(true)
               {
                  §§push(§@!C§);
                  loop1:
                  while(true)
                  {
                     _loc6_ = §§pop();
                     addr113:
                     while(true)
                     {
                        if(param5)
                        {
                           if(_loc7_ || §0W§)
                           {
                              if(!(_loc7_ || §0W§))
                              {
                                 continue;
                              }
                              §§push(§]!h§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES));
                              if(_loc7_ || param3)
                              {
                                 if(!(_loc7_ || param3))
                                 {
                                    continue loop1;
                                 }
                                 §§push(§§pop());
                              }
                              _loc6_ = §§pop();
                           }
                           loop3:
                           while(!_loc8_)
                           {
                              while(true)
                              {
                                 trackSampledEvent(_loc6_,param1,param2,param3,param4);
                                 if(!(_loc8_ && param1))
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              return;
                           }
                           continue loop0;
                        }
                        §§goto(addr31);
                     }
                  }
               }
            }
            §§goto(addr27);
         }
         §§goto(addr113);
      }
      
      private static function §]!h§(param1:String, param2:Array, param3:Array) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
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
                        if(!_loc5_)
                        {
                           if(§§pop().indexOf(§§pop()) >= 0)
                           {
                              break;
                           }
                           if(!(_loc5_ && param3))
                           {
                              if(!(_loc5_ && §0W§))
                              {
                                 return TRACKING_FUNCTION_10_PERCENT;
                              }
                              break loop1;
                           }
                           if(!(_loc5_ && param2))
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
                  return §@!C§;
               }
            }
         }
         return TRACKING_FUNCTION_1_PERCENT;
      }
      
      private static function §;'§(param1:Array) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = null;
         if(!(_loc8_ && §0W§))
         {
            §§push(param1);
            if(_loc7_)
            {
               §§push(§§pop() == null);
               if(_loc7_)
               {
                  if(!§§pop())
                  {
                     if(!_loc8_)
                     {
                        §§pop();
                        if(_loc7_)
                        {
                           §§goto(addr44);
                        }
                        return null;
                     }
                  }
               }
               §§goto(addr44);
            }
            addr44:
            if(param1.length == 0)
            {
               if(!(_loc7_ || param1))
               {
                  §§goto(addr54);
               }
            }
            §§goto(addr54);
         }
         addr54:
         var _loc2_:* = "";
         var _loc3_:Array = param1.concat();
         if(!(_loc8_ && _loc3_))
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
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!_loc8_)
                     {
                        if(§§pop().length <= 0)
                        {
                           §§push(_loc4_);
                           if(!(_loc8_ && _loc2_))
                           {
                              if(!_loc7_)
                              {
                                 continue loop1;
                              }
                              §§push(§§pop());
                           }
                           if(_loc7_ || _loc2_)
                           {
                              if(!(_loc7_ || §0W§))
                              {
                                 break;
                              }
                              _loc2_ = §§pop();
                              if(_loc7_ || param1)
                              {
                                 if(!_loc7_)
                                 {
                                    addr132:
                                    §§push(_loc2_);
                                 }
                                 if(true)
                                 {
                                    continue loop0;
                                 }
                                 continue;
                                 break;
                              }
                              addr139:
                              if(!(_loc8_ && _loc2_))
                              {
                                 break loop2;
                              }
                              continue loop2;
                           }
                           addr138:
                           _loc2_ = §§pop();
                           §§goto(addr139);
                        }
                        §§goto(addr132);
                     }
                     break;
                  }
                  §§goto(addr138);
               }
               continue loop0;
            }
         }
         return _loc2_;
      }
      
      private static function §7!p§(param1:int = 0) : int
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
