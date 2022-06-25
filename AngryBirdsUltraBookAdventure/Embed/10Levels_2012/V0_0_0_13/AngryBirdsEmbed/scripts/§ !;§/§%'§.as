package § !;§
{
   import flash.utils.getTimer;
   
   public class §%'§ extends §^!3§
   {
      
      private static const §??§:Boolean;
      
      private static const § !-§:String = "warning";
      
      private static const §false§:String = "full-game-link";
      
      private static const §0!%§:String = "framerate";
      
      private static const §@_§:String = "error";
      
      public static const § !8§:String = "slingshot-used";
      
      private static const §0!0§:String = "download-failed";
      
      private static const §>?§:String = "invalid-level";
      
      private static const §3z§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array;
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array;
      
      private static const SAMPLE_1_PERCENT:String = " x 100";
      
      private static const SAMPLE_10_PERCENT:String = " x 10";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §68§:Array;
      
      private static var §8g§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §??§ = AngryBirdsFP11.§[!2§;
            if(!_loc1_)
            {
               § !-§ = "warning";
               if(!_loc1_)
               {
                  §false§ = "full-game-link";
                  if(!(_loc1_ && _loc1_))
                  {
                     §0!%§ = "framerate";
                     §@_§ = "error";
                     if(_loc2_ || _loc1_)
                     {
                        addr58:
                        § !8§ = "slingshot-used";
                        §0!0§ = "download-failed";
                        §>?§ = "invalid-level";
                        addr64:
                        if(!(_loc1_ && §%'§))
                        {
                           §3z§ = "flash-var-missing";
                           if(_loc1_ && _loc1_)
                           {
                           }
                        }
                        §§goto(addr148);
                     }
                     SAMPLE_1_PERCENT_FLASH_ACTIONS = [];
                     SAMPLE_100_PERCENT_FLASH_ACTIONS = [ACTION_APPLICATION_CRASH,§4n§,§4§];
                     SAMPLE_1_PERCENT_CATEGORIES = [];
                     if(_loc2_ || _loc2_)
                     {
                        SAMPLE_100_PERCENT_CATEGORIES = [§@_§];
                        if(!_loc1_)
                        {
                           addr119:
                           SAMPLE_1_PERCENT = " x 100";
                           SAMPLE_10_PERCENT = " x 10";
                           sSample10Percent = false;
                        }
                     }
                     sSample1Percent = false;
                     if(_loc2_ || _loc2_)
                     {
                        §§goto(addr148);
                     }
                     §§goto(addr158);
                  }
                  §§goto(addr64);
               }
               addr148:
               §68§ = [];
               if(_loc2_ || _loc2_)
               {
                  addr158:
                  §8g§ = false;
               }
               return;
            }
            §§goto(addr119);
         }
         §§goto(addr58);
      }
      
      public function §%'§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §8e§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(Math.random() <= 0.1)
            {
               if(!(_loc2_ && _loc2_))
               {
                  sSample10Percent = true;
                  if(_loc1_ || _loc1_)
                  {
                  }
                  §§goto(addr55);
               }
            }
            if(Math.random() <= 0.01)
            {
               if(_loc1_)
               {
                  §§goto(addr55);
               }
            }
            §§goto(addr55);
         }
         addr55:
         sSample1Percent = true;
      }
      
      public static function §^D§(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §#r§(§^!3§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
         }
      }
      
      public static function §#r§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = null;
         if(_loc6_)
         {
            if(enabled)
            {
               if(!_loc5_)
               {
                  §§push(§6;§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS));
                  if(_loc6_ || §%'§)
                  {
                     §§push(§§pop());
                     if(!_loc5_)
                     {
                        §§push(_loc4_ = §§pop());
                     }
                  }
                  if(§§pop() != null)
                  {
                     if(!(_loc5_ && param1))
                     {
                        addr72:
                        trackEvent(§'!6§,param1 + _loc4_,param2,param3);
                     }
                  }
                  §§goto(addr81);
               }
            }
            addr81:
            return;
         }
         §§goto(addr72);
      }
      
      public static function §,!?§(param1:int, param2:String, param3:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = null;
         if(!_loc7_)
         {
            §§push(§68§);
            if(_loc6_ || param1)
            {
               if(§§pop().indexOf(param2) >= 0)
               {
                  if(_loc6_ || param1)
                  {
                     §§goto(addr40);
                  }
               }
               §§push(§68§);
            }
            var _loc4_:* = §§pop().length == 0;
            if(_loc6_ || §%'§)
            {
               §68§.push(param2);
               §§push(param3);
               if(_loc6_ || param2)
               {
                  if(§§pop())
                  {
                     if(!(_loc7_ && param2))
                     {
                        §§push(§^!3§.ACTION_CPU_FPS_REPORT);
                        if(_loc6_ || §%'§)
                        {
                           _loc5_ = §§pop();
                           addr115:
                           addr116:
                           if(_loc4_)
                           {
                              addr117:
                              §#r§(_loc5_,param1.toString(),param1);
                           }
                           §#!#§(§0!%§,_loc5_,param2,param1);
                        }
                        else
                        {
                           addr107:
                           _loc5_ = §§pop();
                           if(_loc6_ || param2)
                           {
                              §§goto(addr115);
                           }
                        }
                        return;
                     }
                     §§goto(addr117);
                  }
                  else
                  {
                     §§push(§^!3§.ACTION_GPU_FPS_REPORT);
                  }
                  §§goto(addr107);
               }
               §§goto(addr116);
            }
            §§goto(addr117);
         }
         addr40:
      }
      
      public static function §5'§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §#!#§(§ !-§,§0!0§,param1,0);
         }
      }
      
      public static function §71§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§@?§());
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            §#!#§(§false§,param1,_loc2_.toString(),_loc2_);
         }
      }
      
      public static function §<_§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && §%'§))
         {
            §§push(param1);
            if(!_loc2_)
            {
               if(§§pop() == null)
               {
                  if(_loc3_)
                  {
                     §§push("[null]");
                     if(_loc3_ || §%'§)
                     {
                        param1 = §§pop();
                        if(_loc3_)
                        {
                           addr73:
                           §#!#§(§ !-§,§>?§,param1,0);
                           addr62:
                        }
                        §§goto(addr73);
                     }
                     else
                     {
                        addr70:
                        param1 = §§pop();
                        if(!_loc2_)
                        {
                           §§goto(addr73);
                        }
                     }
                     §§goto(addr79);
                  }
                  else
                  {
                     addr69:
                     §§push("[empty]");
                  }
                  §§goto(addr70);
               }
               else
               {
                  addr64:
                  if(param1.length == 0)
                  {
                     if(!_loc2_)
                     {
                        §§goto(addr69);
                     }
                     addr79:
                     return;
                  }
               }
               §§goto(addr73);
            }
            §§goto(addr64);
         }
         §§goto(addr62);
      }
      
      public static function §?&§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §#!#§(§ !-§,§3z§,param1,0);
         }
      }
      
      public static function §8!&§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §#!#§(§@_§,param1,"",0,false);
         }
      }
      
      public static function §@2§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(§8g§)
            {
               if(_loc2_)
               {
                  return;
               }
            }
            else
            {
               addr50:
               §8g§ = true;
            }
            §§push(§@?§());
            if(_loc2_ || _loc3_)
            {
               §§push(int(§§pop()));
            }
            var _loc1_:* = §§pop();
            if(!_loc3_)
            {
               §#r§(§ !8§,_loc1_.toString(),_loc1_);
            }
            return;
         }
         §§goto(addr50);
      }
      
      private static function §#!#§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:* = null;
         if(enabled)
         {
            if(_loc7_ || param1)
            {
               _loc6_ = "";
               if(_loc7_)
               {
                  addr42:
                  if(param5)
                  {
                     addr44:
                     §§push(§6;§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES));
                     if(_loc7_)
                     {
                        §§push(§§pop());
                        if(!(_loc8_ && param3))
                        {
                           _loc6_ = §§pop();
                           if(!_loc8_)
                           {
                              addr73:
                              addr72:
                              if(_loc6_ != null)
                              {
                              }
                              §§goto(addr84);
                           }
                           trackEvent(param1,param2 + _loc6_,param3,param4);
                           addr84:
                           return;
                        }
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr72);
               }
               §§goto(addr44);
            }
            §§goto(addr42);
         }
         §§goto(addr73);
      }
      
      private static function §6;§(param1:String, param2:Array, param3:Array) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            §§push(param3);
            if(_loc4_ || param3)
            {
               §§push(param1);
               if(!(_loc5_ && §%'§))
               {
                  if(§§pop().indexOf(§§pop()) >= 0)
                  {
                     §§push(sSample1Percent);
                     if(!_loc5_)
                     {
                        if(§§pop())
                        {
                           if(_loc4_ || param3)
                           {
                              addr63:
                              §§push(SAMPLE_1_PERCENT);
                              if(_loc4_)
                              {
                                 return §§pop();
                              }
                              §§goto(addr118);
                           }
                           else
                           {
                              addr126:
                              return null;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc4_ || §%'§)
                           {
                              return §§pop();
                           }
                        }
                        return §§pop();
                     }
                     addr114:
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           addr117:
                           addr118:
                           return §§pop();
                           §§push(SAMPLE_10_PERCENT);
                        }
                        else
                        {
                           §§goto(addr128);
                        }
                     }
                     §§goto(addr126);
                  }
                  else
                  {
                     addr103:
                     if(param2.indexOf(param1) < 0)
                     {
                        if(!(_loc5_ && param3))
                        {
                           §§goto(addr114);
                           §§push(sSample10Percent);
                        }
                        §§goto(addr117);
                     }
                  }
                  addr128:
                  return "";
               }
            }
            §§goto(addr103);
         }
         §§goto(addr63);
      }
      
      private static function §@?§(param1:int = 0) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(getTimer() / 1000);
         if(!_loc3_)
         {
            §§push(§§pop() - param1);
         }
         return §§pop();
      }
   }
}
