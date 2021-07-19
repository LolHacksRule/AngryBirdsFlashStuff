package §0!!§
{
   import flash.utils.getTimer;
   
   public class §46§ extends §,!@§
   {
      
      private static const §+6§:Boolean = AngryBirdsFP11.§'Q§;
      
      private static const §`!B§:String = "warning";
      
      private static const §!K§:String = "full-game-link";
      
      private static const §!`§:String = "framerate";
      
      private static const §9>§:String = "error";
      
      public static const §&g§:String = "slingshot-used";
      
      private static const §-!@§:String = "download-failed";
      
      private static const §!r§:String = "invalid-level";
      
      private static const §`d§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array;
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array;
      
      private static const SAMPLE_1_PERCENT:String = " x 100";
      
      private static const SAMPLE_10_PERCENT:String = " x 10";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §-!2§:Array;
      
      private static var §%!@§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(true)
         {
            §!K§ = "full-game-link";
            while(!(_loc1_ && _loc2_))
            {
               §!`§ = "framerate";
               §9>§ = "error";
               §&g§ = "slingshot-used";
               loop2:
               while(!(_loc1_ && _loc2_))
               {
                  §-!@§ = "download-failed";
                  loop3:
                  while(true)
                  {
                     §!r§ = "invalid-level";
                     loop4:
                     while(true)
                     {
                        §`d§ = "flash-var-missing";
                        SAMPLE_1_PERCENT_FLASH_ACTIONS = [];
                        SAMPLE_100_PERCENT_FLASH_ACTIONS = [ACTION_APPLICATION_CRASH,§#4§,§3%§];
                        while(true)
                        {
                           SAMPLE_1_PERCENT_CATEGORIES = [];
                           SAMPLE_100_PERCENT_CATEGORIES = [§9>§];
                           SAMPLE_1_PERCENT = " x 100";
                           loop6:
                           for(; !(_loc1_ && §46§); if(_loc2_ || §46§)
                           {
                              if(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    §%!@§ = false;
                                    return;
                                 }
                                 continue loop2;
                              }
                              continue loop3;
                           })
                           {
                              SAMPLE_10_PERCENT = " x 10";
                              loop7:
                              while(true)
                              {
                                 sSample10Percent = false;
                                 sSample1Percent = false;
                                 while(true)
                                 {
                                    if(!(_loc1_ && §46§))
                                    {
                                       continue loop4;
                                    }
                                    continue loop7;
                                    addr68:
                                    §-!2§ = [];
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       continue loop6;
                                    }
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §46§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §[!2§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(Math.random() <= 0.1)
            {
               if(_loc2_)
               {
                  sSample10Percent = true;
                  addr56:
                  while(true)
                  {
                  }
                  addr56:
               }
               §§goto(addr56);
            }
            while(Math.random() <= 0.01)
            {
               if(_loc2_)
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
         §§goto(addr56);
      }
      
      public static function §>3§(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §3!7§(§,!@§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
         }
      }
      
      public static function §3!7§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         if(!(_loc6_ && param2))
         {
            if(enabled)
            {
               if(_loc5_)
               {
                  §§push(§-!;§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS));
                  if(!_loc6_)
                  {
                     §§push(§§pop());
                     if(_loc5_)
                     {
                        addr60:
                        §§push(_loc4_ = §§pop());
                     }
                     if(§§pop() != null)
                     {
                        if(_loc5_)
                        {
                           trackEvent(§=!§,param1 + _loc4_,param2,param3);
                           addr75:
                           return;
                           addr74:
                        }
                        §§goto(addr74);
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr60);
               }
            }
         }
         §§goto(addr75);
      }
      
      public static function §!m§(param1:int, param2:String, param3:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = null;
         if(_loc6_ || §46§)
         {
            §§push(§-!2§);
            if(!_loc7_)
            {
               if(§§pop().indexOf(param2) >= 0)
               {
                  if(_loc6_ || param3)
                  {
                     §§goto(addr40);
                  }
               }
               §§push(§-!2§);
            }
            var _loc4_:* = §§pop().length == 0;
            §-!2§.push(param2);
            §§push(param3);
            do
            {
               if(!§§pop())
               {
                  §§push(§,!@§.ACTION_GPU_FPS_REPORT);
                  if(_loc6_ || param2)
                  {
                     _loc5_ = §§pop();
                     if(!_loc7_)
                     {
                        continue;
                     }
                     addr111:
                     §§push(§,!@§.ACTION_CPU_FPS_REPORT);
                  }
                  _loc5_ = §§pop();
                  continue;
               }
               §§goto(addr111);
            }
            while(§§push(_loc4_), !_loc6_);
            
            if(§§pop())
            {
               §3!7§(_loc5_,param1.toString(),param1);
            }
            §5!§(§!`§,_loc5_,param2,param1);
            return;
         }
         addr40:
      }
      
      public static function §+A§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || §46§)
         {
            §5!§(§`!B§,§-!@§,param1,0);
         }
      }
      
      public static function §!t§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§?N§());
         if(_loc4_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && §46§))
         {
            §5!§(§!K§,param1,_loc2_.toString(),_loc2_);
         }
      }
      
      public static function §=L§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || §46§)
         {
            §§push(param1);
            while(§§pop() != null)
            {
               §§push(param1);
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               if(§§pop().length == 0)
               {
                  while(true)
                  {
                     §§push("[empty]");
                     if(!_loc2_)
                     {
                        param1 = §§pop();
                     }
                     else
                     {
                        while(true)
                        {
                           param1 = §§pop();
                           addr109:
                           while(true)
                           {
                              §§goto(addr29);
                           }
                        }
                        addr108:
                     }
                     §§goto(addr103);
                  }
               }
               addr29:
               §§goto(addr84);
            }
            while(true)
            {
               §§goto(addr108);
            }
         }
         addr84:
         loop5:
         while(true)
         {
            §5!§(§`!B§,§!r§,param1,0);
            if(_loc3_ || _loc3_)
            {
               continue loop1;
            }
            addr103:
            while(true)
            {
               continue loop5;
            }
         }
         addr84:
      }
      
      public static function §[3§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §5!§(§`!B§,§`d§,param1,0);
         }
      }
      
      public static function §?S§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §5!§(§9>§,param1,"",0,false);
         }
      }
      
      public static function §5!B§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(§%!@§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  return;
               }
            }
            else
            {
               addr55:
               §%!@§ = true;
            }
            §§push(§?N§());
            if(!(_loc3_ && _loc1_))
            {
               §§push(int(§§pop()));
            }
            var _loc1_:* = §§pop();
            if(!_loc3_)
            {
               §3!7§(§&g§,_loc1_.toString(),_loc1_);
            }
            return;
         }
         §§goto(addr55);
      }
      
      private static function §5!§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:* = null;
         if(!(_loc8_ && §46§))
         {
            if(enabled)
            {
               loop0:
               while(true)
               {
                  _loc6_ = "";
                  if(param5)
                  {
                     while(true)
                     {
                        §§push(§-!;§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES));
                        if(!(_loc8_ && param3))
                        {
                           §§push(§§pop());
                        }
                        addr93:
                        do
                        {
                           _loc6_ = §§pop();
                        }
                        while(!_loc8_);
                        
                        continue loop0;
                        addr49:
                        if(!_loc8_)
                        {
                           trackEvent(param1,param2 + _loc6_,param3,param4);
                        }
                        if(!(_loc8_ && param3))
                        {
                           addr30:
                           return;
                           addr76:
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(_loc6_);
                     if(!_loc8_)
                     {
                        if(§§pop() == null)
                        {
                           addr29:
                           break;
                        }
                        §§goto(addr49);
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr30);
               }
            }
            §§goto(addr29);
         }
         §§goto(addr76);
      }
      
      private static function §-!;§(param1:String, param2:Array, param3:Array) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param3);
         loop0:
         while(true)
         {
            §§push(param1);
            addr96:
            addr100:
            while(true)
            {
               if(§§pop().indexOf(§§pop()) >= 0)
               {
                  §§push(sSample1Percent);
                  break;
               }
               continue loop0;
            }
            addr100:
            addr92:
            if(§§pop())
            {
               if(_loc5_ || param1)
               {
                  addr109:
                  return SAMPLE_1_PERCENT;
               }
            }
            return null;
         }
      }
      
      private static function §?N§(param1:int = 0) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(getTimer() / 1000);
         if(!(_loc3_ && §46§))
         {
            return §§pop() - param1;
         }
      }
   }
}
