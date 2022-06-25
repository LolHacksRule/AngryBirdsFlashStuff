package §5H§
{
   import §#!;§.§;T§;
   import §#'§.§0X§;
   import §+!"§.§3<§;
   import §0!5§.include;
   import §6J§.§&!;§;
   import §7!0§.§9!0§;
   import §?b§.§7!,§;
   import §@!H§.§!!1§;
   import flash.geom.Rectangle;
   
   public class §[k§
   {
      
      public static var §>§:int = 0;
      
      public static var §%i§:int = 0;
      
      public static var §&@§:§7!,§;
      
      public static var §+S§:§3<§;
      
      public static var §,#§:Boolean = false;
      
      public static var §?T§:§[k§ = null;
      
      public static var §;!+§:§0X§;
      
      public static var §9!-§:Boolean = true;
      
      public static var §9U§:Number = 1;
      
      public static var §3!5§:Number = 1;
      
      public static var §@$§:Number = 1;
      
      private static var §+1§:§!!1§ = null;
      
      private static var §[!B§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §%i§ = 0;
            if(!_loc1_)
            {
               §,#§ = false;
               §?T§ = null;
               §9!-§ = true;
               §§goto(addr40);
            }
            §§goto(addr77);
         }
         addr40:
         if(!_loc1_)
         {
            §9U§ = 1;
         }
         if(_loc2_ || _loc1_)
         {
            addr77:
            §[!B§ = false;
         }
      }
      
      public function §[k§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §>!2§() : Number
      {
         return §>§ * §3!5§;
      }
      
      public static function §`&§() : Number
      {
         return §%i§ * §@$§;
      }
      
      public static function pause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!§[!B§)
         {
            §[!B§ = true;
            §§push(§;T§.§1I§);
            if(_loc1_ || §[k§)
            {
               if(§§pop())
               {
                  addr43:
                  §;T§.§1I§.isPaused = true;
               }
               §§push(§;T§.§,H§);
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr59);
               }
               §§pop().§4-§(false);
               §§goto(addr59);
            }
            §§goto(addr43);
         }
         addr59:
         if(§§pop())
         {
            §§push(§;T§.§,H§);
         }
      }
      
      public static function resume() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(§[!B§)
         {
            §[!B§ = false;
            if(!(_loc2_ && _loc1_))
            {
               §§push(§;T§.§1I§);
               if(_loc1_ || §[k§)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr62:
                        §;T§.§1I§.isPaused = false;
                        if(_loc2_)
                        {
                        }
                        §§goto(addr87);
                     }
                  }
                  §§push(§;T§.§,H§);
                  if(_loc1_ || §[k§)
                  {
                     if(§§pop())
                     {
                        if(!(_loc2_ && §[k§))
                        {
                           addr83:
                           §§push(§;T§.§,H§);
                        }
                     }
                     §§goto(addr87);
                  }
                  §§pop().§4-§(true);
                  addr87:
                  return;
               }
               §§goto(addr62);
            }
            §§goto(addr83);
         }
         §§goto(addr62);
      }
      
      public static function get isPaused() : Boolean
      {
         return §[!B§;
      }
      
      public static function init(param1:§0X§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            §;!+§ = param1;
            if(_loc4_ || param1)
            {
               §>§ = param2;
               if(!_loc4_)
               {
               }
               §§goto(addr63);
            }
            §%i§ = param3;
            if(!_loc4_)
            {
            }
            §§goto(addr63);
         }
         addr63:
         §+S§ = new §3<§(true,param1.canvas);
      }
      
      public static function §2!F§(param1:XML, param2:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §9!0§.§2!F§(param1,param2);
         }
      }
      
      public static function § <§(param1:include, param2:Array, param3:Function = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            §&@§.§ <§(param1,param2,param3);
         }
      }
      
      public static function §#8§(param1:§&!;§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §&@§.init(param1);
         }
      }
      
      public static function §^L§(param1:§!!1§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §+1§ = param1;
            if(!(_loc2_ && §[k§))
            {
               §&@§.§^L§(param1);
            }
         }
      }
      
      public static function get controller() : §!!1§
      {
         return §+1§;
      }
      
      public static function §^v§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §9!-§ = param1;
            if(_loc2_)
            {
               §&@§.background.§^v§(param1);
            }
         }
      }
      
      public static function §,V§() : Boolean
      {
         return §9!-§;
      }
      
      public static function §%e§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param4);
         if(!_loc6_)
         {
            §§push(32);
            if(!_loc6_)
            {
               if(§§pop() < §§pop())
               {
                  if(!_loc6_)
                  {
                     §§push(32);
                     if(_loc5_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc5_ || param2)
                        {
                           param4 = §§pop();
                           if(!_loc6_)
                           {
                              addr39:
                              §§push(param3);
                              if(!_loc6_)
                              {
                                 addr43:
                                 if(§§pop() < 32)
                                 {
                                    if(!(_loc6_ && param2))
                                    {
                                       addr53:
                                       param3 = 32;
                                       §§push(§;T§.§,H§);
                                       if(_loc5_ || §[k§)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc6_)
                                             {
                                                addr76:
                                                §§push(§;T§.§,H§);
                                                if(!_loc6_)
                                                {
                                                   §§pop().§2!&§ = new Rectangle(param1,param2,param3,param4);
                                                }
                                                §§goto(addr89);
                                             }
                                             addr89:
                                             §§pop().setCanvasSize(param3,param4);
                                             §9U§ = Math.min(param3 / §>§,param4 / §%i§);
                                             addr92:
                                             §§push(§§findproperty(§3!5§));
                                             §§push(param3);
                                             if(_loc5_ || param3)
                                             {
                                                §§push(§§pop() / §>§);
                                             }
                                             §§pop().§3!5§ = §§pop();
                                             §§push(§§findproperty(§@$§));
                                             §§push(param4);
                                             if(!(_loc6_ && param2))
                                             {
                                                §§push(§§pop() / §%i§);
                                             }
                                             §§pop().§@$§ = §§pop();
                                             §&@§.§"&§(param3,param4);
                                             return;
                                             §§push(§;T§.§,H§);
                                          }
                                          §§goto(addr92);
                                       }
                                       §§goto(addr89);
                                       addr52:
                                    }
                                    §§goto(addr76);
                                 }
                              }
                           }
                        }
                        §§goto(addr53);
                     }
                     §§goto(addr52);
                  }
                  §§goto(addr76);
               }
               §§goto(addr39);
            }
         }
         §§goto(addr43);
      }
   }
}
