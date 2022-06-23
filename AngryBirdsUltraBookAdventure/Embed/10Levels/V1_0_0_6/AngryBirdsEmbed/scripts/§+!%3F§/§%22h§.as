package §+!?§
{
   import §,!C§.§0v§;
   import §3G§.§!E§;
   import §8c§.§1N§;
   import §<=§.§9x§;
   import §=!B§.§^!9§;
   import §=E§.§"!5§;
   import §>K§.§;Q§;
   import §catch§.§4@§;
   import flash.geom.Rectangle;
   
   public class §"h§
   {
      
      public static var §4T§:int = 0;
      
      public static var §0!$§:int = 0;
      
      public static var §1C§:§!E§;
      
      public static var §73§:§;Q§;
      
      public static var §0b§:Boolean = false;
      
      public static var §<o§:§"h§ = null;
      
      public static var §'7§:§1N§;
      
      public static var § a§:Boolean = true;
      
      public static var §],§:Number = 1;
      
      public static var §'!I§:Number = 1;
      
      public static var §for§:Number = 1;
      
      private static var §'!J§:§"!5§ = null;
      
      private static var §^!+§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §0!$§ = 0;
            if(!_loc1_)
            {
               §0b§ = false;
               §<o§ = null;
               § a§ = true;
               §§goto(addr40);
            }
            §§goto(addr77);
         }
         addr40:
         if(!_loc1_)
         {
            §],§ = 1;
         }
         if(_loc2_ || _loc1_)
         {
            addr77:
            §^!+§ = false;
         }
      }
      
      public function §"h§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §=[§() : Number
      {
         return §4T§ * §'!I§;
      }
      
      public static function §+_§() : Number
      {
         return §0!$§ * §for§;
      }
      
      public static function pause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!§^!+§)
         {
            §^!+§ = true;
            §§push(§4@§.§&R§);
            if(_loc1_ || §"h§)
            {
               if(§§pop())
               {
                  addr43:
                  §4@§.§&R§.isPaused = true;
               }
               §§push(§4@§.§0W§);
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr59);
               }
               §§pop().§`H§(false);
               §§goto(addr59);
            }
            §§goto(addr43);
         }
         addr59:
         if(§§pop())
         {
            §§push(§4@§.§0W§);
         }
      }
      
      public static function resume() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(§^!+§)
         {
            §^!+§ = false;
            if(!(_loc2_ && _loc1_))
            {
               §§push(§4@§.§&R§);
               if(_loc1_ || §"h§)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr62:
                        §4@§.§&R§.isPaused = false;
                        if(_loc2_)
                        {
                        }
                        §§goto(addr87);
                     }
                  }
                  §§push(§4@§.§0W§);
                  if(_loc1_ || §"h§)
                  {
                     if(§§pop())
                     {
                        if(!(_loc2_ && §"h§))
                        {
                           addr83:
                           §§push(§4@§.§0W§);
                        }
                     }
                     §§goto(addr87);
                  }
                  §§pop().§`H§(true);
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
         return §^!+§;
      }
      
      public static function init(param1:§1N§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            §'7§ = param1;
            if(_loc4_ || param1)
            {
               §4T§ = param2;
               if(!_loc4_)
               {
               }
               §§goto(addr63);
            }
            §0!$§ = param3;
            if(!_loc4_)
            {
            }
            §§goto(addr63);
         }
         addr63:
         §73§ = new §;Q§(true,param1.canvas);
      }
      
      public static function §&M§(param1:XML, param2:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §0v§.§&M§(param1,param2);
         }
      }
      
      public static function §#y§(param1:§9x§, param2:Array, param3:Function = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            §1C§.§#y§(param1,param2,param3);
         }
      }
      
      public static function §6!9§(param1:§^!9§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §1C§.init(param1);
         }
      }
      
      public static function §;j§(param1:§"!5§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §'!J§ = param1;
            if(!(_loc2_ && §"h§))
            {
               §1C§.§;j§(param1);
            }
         }
      }
      
      public static function get controller() : §"!5§
      {
         return §'!J§;
      }
      
      public static function §=K§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            § a§ = param1;
            if(_loc2_)
            {
               §1C§.background.§=K§(param1);
            }
         }
      }
      
      public static function §"+§() : Boolean
      {
         return § a§;
      }
      
      public static function §19§(param1:Number, param2:Number, param3:Number, param4:Number) : void
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
                                       §§push(§4@§.§0W§);
                                       if(_loc5_ || §"h§)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc6_)
                                             {
                                                addr76:
                                                §§push(§4@§.§0W§);
                                                if(!_loc6_)
                                                {
                                                   §§pop().§5B§ = new Rectangle(param1,param2,param3,param4);
                                                }
                                                §§goto(addr89);
                                             }
                                             addr89:
                                             §§pop().setCanvasSize(param3,param4);
                                             §],§ = Math.min(param3 / §4T§,param4 / §0!$§);
                                             addr92:
                                             §§push(§§findproperty(§'!I§));
                                             §§push(param3);
                                             if(_loc5_ || param3)
                                             {
                                                §§push(§§pop() / §4T§);
                                             }
                                             §§pop().§'!I§ = §§pop();
                                             §§push(§§findproperty(§for§));
                                             §§push(param4);
                                             if(!(_loc6_ && param2))
                                             {
                                                §§push(§§pop() / §0!$§);
                                             }
                                             §§pop().§for§ = §§pop();
                                             §1C§.§`!I§(param3,param4);
                                             return;
                                             §§push(§4@§.§0W§);
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
