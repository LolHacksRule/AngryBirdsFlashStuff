package §8!Q§
{
   import flash.utils.getTimer;
   
   public class §,8§ extends § ^§
   {
      
      private static const §`!&§:Boolean = AngryBirdsFP11.§>!q§;
      
      private static const §?!J§:String = "warning";
      
      private static const §1!5§:String = "full-game-link";
      
      private static const §]!0§:String = "framerate";
      
      private static const §`+§:String = "error";
      
      public static const §&!I§:String = "slingshot-used";
      
      private static const §?!v§:String = "download-failed";
      
      private static const §<!K§:String = "invalid-level";
      
      private static const §<D§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array;
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array;
      
      private static const SAMPLE_1_PERCENT:String = " x 100";
      
      private static const SAMPLE_10_PERCENT:String = " x 10";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §"5§:Array;
      
      private static var §'X§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §1!5§ = "full-game-link";
            §]!0§ = "framerate";
            §`+§ = "error";
            if(_loc1_)
            {
               §&!I§ = "slingshot-used";
               §?!v§ = "download-failed";
               if(_loc1_ || _loc1_)
               {
                  addr49:
                  §<!K§ = "invalid-level";
                  §<D§ = "flash-var-missing";
                  SAMPLE_1_PERCENT_FLASH_ACTIONS = [];
                  SAMPLE_100_PERCENT_FLASH_ACTIONS = [ACTION_APPLICATION_CRASH,§[!D§,§--§];
                  SAMPLE_1_PERCENT_CATEGORIES = [];
                  if(_loc1_)
                  {
                     SAMPLE_100_PERCENT_CATEGORIES = [§`+§];
                     if(_loc1_ || _loc2_)
                     {
                        SAMPLE_1_PERCENT = " x 100";
                        if(_loc1_ || _loc2_)
                        {
                           addr110:
                           SAMPLE_10_PERCENT = " x 10";
                           if(!(_loc2_ && §,8§))
                           {
                              addr120:
                              sSample10Percent = false;
                           }
                           §§goto(addr126);
                        }
                        sSample1Percent = false;
                        addr126:
                        §"5§ = [];
                        if(!_loc2_)
                        {
                           §'X§ = false;
                        }
                        §§goto(addr134);
                     }
                  }
                  §§goto(addr110);
               }
               addr134:
               return;
            }
            §§goto(addr120);
         }
         §§goto(addr49);
      }
      
      public function §,8§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §^!9§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §,8§))
         {
            if(Math.random() <= 0.1)
            {
               if(!_loc2_)
               {
                  sSample10Percent = true;
                  if(_loc1_)
                  {
                     addr44:
                     if(Math.random() <= 0.01)
                     {
                        if(_loc1_ || _loc2_)
                        {
                        }
                     }
                     §§goto(addr58);
                  }
               }
               sSample1Percent = true;
               §§goto(addr58);
            }
            §§goto(addr44);
         }
         addr58:
      }
      
      public static function §9u§(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §?!@§(§ ^§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
         }
      }
      
      public static function §?!@§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = null;
         if(_loc6_ || §,8§)
         {
            if(enabled)
            {
               if(!_loc5_)
               {
                  §§push(dynamic(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS));
                  if(!(_loc5_ && param1))
                  {
                     §§push(§§pop());
                     if(!(_loc5_ && param1))
                     {
                        §§push(_loc4_ = §§pop());
                     }
                  }
                  if(§§pop() != null)
                  {
                     if(!_loc5_)
                     {
                        trackEvent(§[N§,param1 + _loc4_,param2,param3);
                        addr85:
                     }
                     §§goto(addr85);
                  }
               }
               §§goto(addr85);
            }
            return;
         }
         §§goto(addr85);
      }
      
      public static function §@!V§(param1:int, param2:String, param3:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = null;
         if(_loc6_)
         {
            §§push(§"5§);
            if(!(_loc7_ && param3))
            {
               if(§§pop().indexOf(param2) >= 0)
               {
                  if(!_loc7_)
                  {
                     return;
                  }
                  addr36:
                  §§push(§"5§);
               }
               §§goto(addr36);
            }
            var _loc4_:* = §§pop().length == 0;
            if(_loc6_ || §,8§)
            {
               §"5§.push(param2);
               if(!_loc7_)
               {
                  §§push(param3);
                  if(!(_loc7_ && §,8§))
                  {
                     if(§§pop())
                     {
                        addr72:
                        §§push(§ ^§.ACTION_CPU_FPS_REPORT);
                        if(_loc6_ || param3)
                        {
                           _loc5_ = §§pop();
                           if(!_loc6_)
                           {
                           }
                           §§goto(addr110);
                        }
                        else
                        {
                           addr99:
                           _loc5_ = §§pop();
                        }
                        §§goto(addr101);
                     }
                     else
                     {
                        §§push(§ ^§.ACTION_GPU_FPS_REPORT);
                     }
                     §§goto(addr99);
                  }
                  addr101:
                  if(_loc4_)
                  {
                     if(!_loc7_)
                     {
                        §?!@§(_loc5_,param1.toString(),param1);
                     }
                  }
                  §§goto(addr110);
               }
               §§goto(addr72);
            }
            addr110:
            §9!A§(§]!0§,_loc5_,param2,param1);
            return;
         }
         §§goto(addr36);
      }
      
      public static function §4C§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §9!A§(§?!J§,§?!v§,param1,0);
         }
      }
      
      public static function §1!I§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§^!q§());
         if(_loc4_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && param1))
         {
            §9!A§(§1!5§,param1,_loc2_.toString(),_loc2_);
         }
      }
      
      public static function §"!>§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(param1);
            if(_loc2_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_)
                  {
                     addr50:
                     §§push("[null]");
                     if(!_loc3_)
                     {
                        param1 = §§pop();
                        if(!_loc3_)
                        {
                           addr72:
                           §9!A§(§?!J§,§<!K§,param1,0);
                           §§goto(addr78);
                        }
                        else
                        {
                           addr68:
                           §§push("[empty]");
                        }
                        addr78:
                        return;
                     }
                     param1 = §§pop();
                     if(_loc2_)
                     {
                        §§goto(addr72);
                     }
                  }
                  §§goto(addr72);
               }
               else
               {
                  addr58:
                  if(param1.length == 0)
                  {
                     if(!(_loc3_ && param1))
                     {
                        §§goto(addr68);
                     }
                     §§goto(addr72);
                  }
               }
               §§goto(addr72);
            }
            §§goto(addr58);
         }
         §§goto(addr50);
      }
      
      public static function §^F§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §9!A§(§?!J§,§<D§,param1,0);
         }
      }
      
      public static function §%!b§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §9!A§(§`+§,param1,"",0,false);
         }
      }
      
      public static function §5!^§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§'X§)
            {
               if(_loc2_)
               {
                  return;
               }
            }
         }
         §'X§ = true;
         §§push(§^!q§());
         if(_loc2_ || _loc1_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!(_loc3_ && §,8§))
         {
            §?!@§(§&!I§,_loc1_.toString(),_loc1_);
         }
      }
      
      private static function §9!A§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:* = null;
         if(enabled)
         {
            if(!_loc7_)
            {
               _loc6_ = "";
               if(!(_loc7_ && param3))
               {
                  if(param5)
                  {
                     addr45:
                     §§push(dynamic(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES));
                     if(!(_loc7_ && param3))
                     {
                        §§push(§§pop());
                        if(_loc8_ || §,8§)
                        {
                           addr75:
                           _loc6_ = §§pop();
                           §§push(_loc6_);
                        }
                        if(§§pop() != null)
                        {
                           if(_loc8_ || param1)
                           {
                              trackEvent(param1,param2 + _loc6_,param3,param4);
                              addr95:
                              return;
                              addr94:
                           }
                           §§goto(addr94);
                        }
                        §§goto(addr95);
                     }
                  }
                  §§goto(addr75);
               }
               §§goto(addr95);
            }
            §§goto(addr45);
         }
         §§goto(addr95);
      }
      
      private static function dynamic(param1:String, param2:Array, param3:Array) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param3);
         if(!_loc5_)
         {
            §§push(param1);
            if(_loc4_ || param1)
            {
               if(§§pop().indexOf(§§pop()) >= 0)
               {
                  if(_loc4_)
                  {
                     §§push(sSample1Percent);
                     if(!(_loc5_ && param1))
                     {
                        if(§§pop())
                        {
                           addr51:
                           §§push(SAMPLE_1_PERCENT);
                           if(!(_loc5_ && param2))
                           {
                              return §§pop();
                           }
                           §§goto(addr87);
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc5_)
                           {
                              return §§pop();
                           }
                        }
                     }
                     else
                     {
                        addr85:
                        if(§§pop())
                        {
                           addr86:
                           addr87:
                           return §§pop();
                           return SAMPLE_10_PERCENT;
                        }
                        else
                        {
                           return null;
                        }
                     }
                     return §§pop();
                  }
                  §§goto(addr51);
               }
               else
               {
                  addr79:
                  if(param2.indexOf(param1) < 0)
                  {
                     if(!_loc5_)
                     {
                        §§goto(addr85);
                        §§push(sSample10Percent);
                     }
                  }
                  else
                  {
                     return "";
                  }
               }
               §§goto(addr86);
            }
         }
         §§goto(addr79);
      }
      
      private static function §^!q§(param1:int = 0) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(getTimer() / 1000);
         if(!(_loc2_ && _loc2_))
         {
            §§push(§§pop() - param1);
         }
         return §§pop();
      }
   }
}
