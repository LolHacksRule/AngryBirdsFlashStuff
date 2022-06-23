package §+!B§
{
   import flash.utils.getTimer;
   
   public class §;9§ extends §-Q§
   {
      
      private static const §=!L§:Boolean;
      
      private static const §8N§:String = "warning";
      
      private static const §=L§:String = "full-game-link";
      
      private static const §3f§:String = "framerate";
      
      private static const §"v§:String = "error";
      
      public static const §"!'§:String = "slingshot-used";
      
      private static const §]7§:String = "download-failed";
      
      private static const §3§:String = "invalid-level";
      
      private static const §%m§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array;
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array;
      
      private static const SAMPLE_1_PERCENT:String = " x 100";
      
      private static const SAMPLE_10_PERCENT:String = " x 10";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §?3§:Array;
      
      private static var §&C§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §=!L§ = AngryBirdsFP11.§%Z§;
            §8N§ = "warning";
            if(_loc2_)
            {
               §=L§ = "full-game-link";
               §3f§ = "framerate";
               if(_loc2_)
               {
                  §"v§ = "error";
                  if(!_loc1_)
                  {
                     §"!'§ = "slingshot-used";
                     if(_loc2_)
                     {
                        §]7§ = "download-failed";
                        if(!(_loc1_ && _loc2_))
                        {
                           §3§ = "invalid-level";
                           §%m§ = "flash-var-missing";
                           if(_loc2_ || _loc2_)
                           {
                           }
                           §§goto(addr98);
                        }
                        SAMPLE_1_PERCENT_FLASH_ACTIONS = [];
                        SAMPLE_100_PERCENT_FLASH_ACTIONS = [ACTION_APPLICATION_CRASH,§@! §,§?c§];
                        if(!(_loc1_ && _loc2_))
                        {
                           SAMPLE_1_PERCENT_CATEGORIES = [];
                        }
                     }
                  }
                  §§goto(addr135);
               }
               addr98:
               SAMPLE_100_PERCENT_CATEGORIES = [§"v§];
               SAMPLE_1_PERCENT = " x 100";
               if(_loc2_ || _loc2_)
               {
                  SAMPLE_10_PERCENT = " x 10";
                  if(!(_loc1_ && _loc2_))
                  {
                     addr132:
                     sSample10Percent = false;
                     addr135:
                     sSample1Percent = false;
                     if(!_loc1_)
                     {
                        §?3§ = [];
                     }
                  }
                  §§goto(addr135);
               }
               §&C§ = false;
               return;
            }
            §§goto(addr135);
         }
         §§goto(addr132);
      }
      
      public function §;9§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §0!7§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(Math.random() <= 0.1)
            {
               if(_loc1_)
               {
                  addr39:
                  sSample10Percent = true;
                  if(_loc1_)
                  {
                     §§goto(addr44);
                  }
                  §§goto(addr50);
               }
            }
            addr44:
            if(Math.random() <= 0.01)
            {
               if(!_loc2_)
               {
                  addr50:
                  sSample1Percent = true;
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public static function §<w§(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || §;9§)
         {
            §"!A§(§-Q§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
         }
      }
      
      public static function §"!A§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = null;
         if(_loc6_ || §;9§)
         {
            if(enabled)
            {
               if(_loc6_)
               {
                  addr41:
                  §§push(§#&§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS));
                  if(!_loc5_)
                  {
                     §§push(§§pop());
                     if(_loc6_ || param2)
                     {
                        §§push(_loc4_ = §§pop());
                     }
                  }
                  if(§§pop() != null)
                  {
                     if(!(_loc5_ && param1))
                     {
                        addr77:
                        trackEvent(§;>§,param1 + _loc4_,param2,param3);
                     }
                  }
                  §§goto(addr86);
               }
               §§goto(addr77);
            }
            addr86:
            return;
         }
         §§goto(addr41);
      }
      
      public static function §=q§(param1:int, param2:String, param3:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = null;
         if(_loc7_ || param3)
         {
            §§push(§?3§);
            if(_loc7_)
            {
               if(§§pop().indexOf(param2) >= 0)
               {
                  if(!(_loc6_ && param1))
                  {
                     return;
                  }
                  addr42:
                  §§push(§?3§);
               }
               §§goto(addr42);
            }
            var _loc4_:* = §§pop().length == 0;
            if(!(_loc6_ && §;9§))
            {
               §?3§.push(param2);
               §§push(param3);
               if(_loc7_)
               {
                  if(§§pop())
                  {
                     §§push(§-Q§.ACTION_CPU_FPS_REPORT);
                     if(_loc7_ || param3)
                     {
                        _loc5_ = §§pop();
                        if(_loc7_ || param1)
                        {
                           addr111:
                           if(_loc4_)
                           {
                              §"!A§(_loc5_,param1.toString(),param1);
                              addr119:
                              §<!8§(§3f§,_loc5_,param2,param1);
                           }
                           §§goto(addr119);
                           addr99:
                        }
                        return;
                     }
                     addr103:
                     _loc5_ = §§pop();
                     if(_loc7_ || §;9§)
                     {
                        §§goto(addr111);
                     }
                     §§goto(addr119);
                  }
                  else
                  {
                     §§push(§-Q§.ACTION_GPU_FPS_REPORT);
                  }
                  §§goto(addr103);
               }
               §§goto(addr111);
            }
            §§goto(addr99);
         }
         §§goto(addr42);
      }
      
      public static function §`,§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §<!8§(§8N§,§]7§,param1,0);
         }
      }
      
      public static function §%p§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§,!&§());
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §<!8§(§=L§,param1,_loc2_.toString(),_loc2_);
         }
      }
      
      public static function §^'§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(param1);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop() == null)
               {
                  if(!_loc2_)
                  {
                     §§push("[null]");
                     if(!_loc2_)
                     {
                        param1 = §§pop();
                        if(!_loc2_)
                        {
                           addr78:
                           §<!8§(§8N§,§3§,param1,0);
                           addr62:
                        }
                        else
                        {
                           addr75:
                           param1 = "[empty]";
                           if(!_loc2_)
                           {
                              §§goto(addr78);
                           }
                        }
                        return;
                     }
                  }
                  §§goto(addr75);
               }
               else
               {
                  addr64:
                  if(param1.length == 0)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        §§goto(addr75);
                     }
                  }
               }
               §§goto(addr78);
            }
            §§goto(addr64);
         }
         §§goto(addr62);
      }
      
      public static function §2j§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §<!8§(§8N§,§%m§,param1,0);
         }
      }
      
      public static function §!!L§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §<!8§(§"v§,param1,"",0,false);
         }
      }
      
      public static function §^!,§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§&C§)
            {
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr37);
               }
            }
            §&C§ = true;
            §§push(§,!&§());
            if(!_loc3_)
            {
               §§push(int(§§pop()));
            }
            var _loc1_:* = §§pop();
            if(!(_loc3_ && §;9§))
            {
               §"!A§(§"!'§,_loc1_.toString(),_loc1_);
            }
            return;
         }
         addr37:
      }
      
      private static function §<!8§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:* = null;
         if(_loc7_ || param2)
         {
            if(enabled)
            {
               if(_loc7_ || param2)
               {
                  _loc6_ = "";
                  if(!_loc8_)
                  {
                     if(param5)
                     {
                        if(!(_loc8_ && param2))
                        {
                           addr58:
                           §§push(§#&§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES));
                           if(!_loc8_)
                           {
                              §§push(§§pop());
                              if(_loc7_ || param1)
                              {
                                 _loc6_ = §§pop();
                                 §§goto(addr96);
                              }
                           }
                           if(§§pop() != null)
                           {
                              if(_loc7_ || param2)
                              {
                                 §§goto(addr96);
                              }
                           }
                        }
                        §§goto(addr96);
                     }
                  }
                  §§goto(addr86);
               }
               §§goto(addr96);
            }
            addr96:
            if(!_loc8_)
            {
               addr86:
               §§push(_loc6_);
            }
            trackEvent(param1,param2 + _loc6_,param3,param4);
            return;
         }
         §§goto(addr58);
      }
      
      private static function §#&§(param1:String, param2:Array, param3:Array) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(param3);
            if(_loc5_ || param3)
            {
               §§push(param1);
               if(_loc5_ || param1)
               {
                  if(§§pop().indexOf(§§pop()) >= 0)
                  {
                     §§push(sSample1Percent);
                     if(!(_loc4_ && param3))
                     {
                        if(§§pop())
                        {
                           §§push(SAMPLE_1_PERCENT);
                           if(_loc5_ || §;9§)
                           {
                              return §§pop();
                           }
                           §§goto(addr108);
                        }
                        else
                        {
                           §§push(null);
                           if(!(_loc4_ && param1))
                           {
                              return §§pop();
                           }
                        }
                     }
                     else
                     {
                        addr106:
                        if(§§pop())
                        {
                           addr108:
                           return §§pop();
                           return SAMPLE_10_PERCENT;
                        }
                        else
                        {
                           addr111:
                           return null;
                        }
                     }
                     return §§pop();
                  }
                  §§goto(addr95);
                  §§goto(addr106);
               }
               §§goto(addr95);
            }
            addr95:
            if(param2.indexOf(param1) < 0)
            {
               if(!(_loc4_ && param3))
               {
                  §§goto(addr106);
                  §§push(sSample10Percent);
               }
            }
            return "";
         }
         §§goto(addr111);
      }
      
      private static function §,!&§(param1:int = 0) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(getTimer() / 1000);
         if(_loc3_ || _loc2_)
         {
            §§push(§§pop() - param1);
         }
         return §§pop();
      }
   }
}
