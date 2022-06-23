package §"!5§
{
   import §%x§.§#;§;
   import §&p§.§'_§;
   import §0!<§.§@!5§;
   import §<!7§.§5i§;
   import §<!B§.§<O§;
   import §>!C§.§9R§;
   import §?!D§.§@!$§;
   import §`K§.§3n§;
   import flash.geom.Rectangle;
   
   public class §,!!§
   {
      
      public static var §;]§:int = 0;
      
      public static var §3L§:int = 0;
      
      public static var §;4§:§#;§;
      
      public static var §;!;§:§@!5§;
      
      public static var §[!2§:Boolean = false;
      
      public static var § #§:§,!!§ = null;
      
      public static var §-k§:§5i§;
      
      public static var §5§:Boolean = true;
      
      public static var §2J§:Number = 1;
      
      public static var §0!3§:Number = 1;
      
      public static var §,`§:Number = 1;
      
      private static var §"Q§:§@!$§ = null;
      
      private static var §6<§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §3L§ = 0;
            if(!_loc1_)
            {
               §[!2§ = false;
               § #§ = null;
               §5§ = true;
               §§goto(addr40);
            }
            §§goto(addr77);
         }
         addr40:
         if(!_loc1_)
         {
            §2J§ = 1;
         }
         if(_loc2_ || _loc1_)
         {
            addr77:
            §6<§ = false;
         }
      }
      
      public function §,!!§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §[i§() : Number
      {
         return §;]§ * §0!3§;
      }
      
      public static function §#9§() : Number
      {
         return §3L§ * §,`§;
      }
      
      public static function pause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!§6<§)
         {
            §6<§ = true;
            §§push(§'_§.§6!"§);
            if(_loc1_ || §,!!§)
            {
               if(§§pop())
               {
                  addr43:
                  §'_§.§6!"§.isPaused = true;
               }
               §§push(§'_§.§17§);
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr59);
               }
               §§pop().§%z§(false);
               §§goto(addr59);
            }
            §§goto(addr43);
         }
         addr59:
         if(§§pop())
         {
            §§push(§'_§.§17§);
         }
      }
      
      public static function resume() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(§6<§)
         {
            §6<§ = false;
            if(!(_loc2_ && _loc1_))
            {
               §§push(§'_§.§6!"§);
               if(_loc1_ || §,!!§)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr62:
                        §'_§.§6!"§.isPaused = false;
                        if(_loc2_)
                        {
                        }
                        §§goto(addr87);
                     }
                  }
                  §§push(§'_§.§17§);
                  if(_loc1_ || §,!!§)
                  {
                     if(§§pop())
                     {
                        if(!(_loc2_ && §,!!§))
                        {
                           addr83:
                           §§push(§'_§.§17§);
                        }
                     }
                     §§goto(addr87);
                  }
                  §§pop().§%z§(true);
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
         return §6<§;
      }
      
      public static function init(param1:§5i§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            §-k§ = param1;
            if(_loc4_ || param1)
            {
               §;]§ = param2;
               if(!_loc4_)
               {
               }
               §§goto(addr63);
            }
            §3L§ = param3;
            if(!_loc4_)
            {
            }
            §§goto(addr63);
         }
         addr63:
         §;!;§ = new §@!5§(true,param1.canvas);
      }
      
      public static function §>!%§(param1:XML, param2:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §3n§.§>!%§(param1,param2);
         }
      }
      
      public static function §^!2§(param1:§<O§, param2:Array, param3:Function = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            §;4§.§^!2§(param1,param2,param3);
         }
      }
      
      public static function §<H§(param1:§9R§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §;4§.init(param1);
         }
      }
      
      public static function § ]§(param1:§@!$§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §"Q§ = param1;
            if(!(_loc2_ && §,!!§))
            {
               §;4§.§ ]§(param1);
            }
         }
      }
      
      public static function get controller() : §@!$§
      {
         return §"Q§;
      }
      
      public static function §#,§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §5§ = param1;
            if(_loc2_)
            {
               §;4§.background.§#,§(param1);
            }
         }
      }
      
      public static function §1q§() : Boolean
      {
         return §5§;
      }
      
      public static function §1%§(param1:Number, param2:Number, param3:Number, param4:Number) : void
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
                                       §§push(§'_§.§17§);
                                       if(_loc5_ || §,!!§)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc6_)
                                             {
                                                addr76:
                                                §§push(§'_§.§17§);
                                                if(!_loc6_)
                                                {
                                                   §§pop().§^w§ = new Rectangle(param1,param2,param3,param4);
                                                }
                                                §§goto(addr89);
                                             }
                                             addr89:
                                             §§pop().setCanvasSize(param3,param4);
                                             §2J§ = Math.min(param3 / §;]§,param4 / §3L§);
                                             addr92:
                                             §§push(§§findproperty(§0!3§));
                                             §§push(param3);
                                             if(_loc5_ || param3)
                                             {
                                                §§push(§§pop() / §;]§);
                                             }
                                             §§pop().§0!3§ = §§pop();
                                             §§push(§§findproperty(§,`§));
                                             §§push(param4);
                                             if(!(_loc6_ && param2))
                                             {
                                                §§push(§§pop() / §3L§);
                                             }
                                             §§pop().§,`§ = §§pop();
                                             §;4§.§0"§(param3,param4);
                                             return;
                                             §§push(§'_§.§17§);
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
