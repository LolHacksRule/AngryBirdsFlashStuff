package §?!-§
{
   import § !A§.§ p§;
   import § !r§.§6!o§;
   import §-!0§.§2! §;
   import §5#§.§5k§;
   import §7U§.§?!R§;
   import §<!<§.§7E§;
   import §?!6§.§1!!§;
   import §@!X§.§7j§;
   import flash.geom.Rectangle;
   
   public class §'!V§
   {
      
      public static var §&d§:int = 0;
      
      public static var §6k§:int = 0;
      
      public static var §1!2§:§7E§;
      
      public static var §'!s§:§6!o§;
      
      public static var §>!q§:Boolean = false;
      
      public static var §'?§:§'!V§ = null;
      
      public static var §6!O§:§ p§;
      
      public static var §<;§:Boolean = true;
      
      public static var §25§:Number = 1;
      
      public static var §9r§:Number = 1;
      
      public static var §'A§:Number = 1;
      
      private static var §^!I§:§5k§ = null;
      
      private static var §6&§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
      }
      
      public function §'!V§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §?!a§() : Number
      {
         return §&d§ * §9r§;
      }
      
      public static function §<x§() : Number
      {
         return §6k§ * §'A§;
      }
      
      public static function pause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!§6&§)
         {
            §6&§ = true;
            if(!_loc1_)
            {
               §§push(§7j§.§&t§);
               if(!(_loc1_ && _loc1_))
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc1_)
                     {
                        addr63:
                        §7j§.§&t§.§=!A§ = true;
                     }
                  }
                  §§push(§7j§.§else§);
                  if(!_loc1_)
                  {
                     if(!§§pop())
                     {
                     }
                     §§goto(addr81);
                  }
                  §§pop().§?A§(false);
                  §§goto(addr81);
               }
               §§goto(addr63);
            }
         }
         addr81:
         if(_loc2_ || §'!V§)
         {
            §§push(§7j§.§else§);
         }
      }
      
      public static function resume() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§6&§)
            {
               if(!_loc1_)
               {
                  §6&§ = false;
                  if(!_loc1_)
                  {
                     §§push(§7j§.§&t§);
                     if(!(_loc1_ && _loc2_))
                     {
                        if(§§pop())
                        {
                           §§goto(addr83);
                        }
                        addr76:
                        §§push(§7j§.§else§);
                        if(_loc2_)
                        {
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                              }
                           }
                        }
                        §§goto(addr83);
                     }
                     §§pop().§=!A§ = false;
                     if(_loc2_ || _loc2_)
                     {
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr76);
               }
            }
            §§goto(addr83);
         }
         addr83:
         if(!(_loc1_ && _loc2_))
         {
            §§push(§7j§.§&t§);
         }
         §7j§.§else§.§?A§(true);
      }
      
      public static function get §=!A§() : Boolean
      {
         return §6&§;
      }
      
      public static function init(param1:§ p§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §6!O§ = param1;
            if(_loc4_)
            {
               §&d§ = param2;
               if(_loc4_ || param1)
               {
                  §6k§ = param3;
                  if(!(_loc5_ && param3))
                  {
                     addr63:
                     §'!s§ = new §6!o§(true,param1.canvas);
                  }
               }
               §§goto(addr63);
            }
            return;
         }
         §§goto(addr63);
      }
      
      public static function §@!u§(param1:XML, param2:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §1!!§.§@!u§(param1,param2);
         }
      }
      
      public static function § D§(param1:§?!R§, param2:Array, param3:Function = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            §1!2§.§ D§(param1,param2,param3);
         }
      }
      
      public static function loadLevel(param1:§2! §) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §1!2§.init(param1);
         }
      }
      
      public static function §>_§(param1:§5k§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §^!I§ = param1;
            if(_loc2_ || _loc2_)
            {
               addr28:
               §1!2§.§>_§(param1);
            }
            return;
         }
         §§goto(addr28);
      }
      
      public static function get §?!G§() : §5k§
      {
         return §^!I§;
      }
      
      public static function §6!Y§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §<;§ = param1;
            if(!_loc3_)
            {
               §1!2§.background.§6!Y§(param1);
            }
         }
      }
      
      public static function §'V§() : Boolean
      {
         return §<;§;
      }
      
      public static function §>!T§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param4);
         if(!_loc5_)
         {
            §§push(32);
            if(_loc6_ || §'!V§)
            {
               if(§§pop() < §§pop())
               {
                  §§push(32);
                  if(_loc6_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc5_)
                     {
                        §§goto(addr35);
                     }
                     §§goto(addr41);
                  }
                  §§goto(addr45);
               }
               §§goto(addr38);
            }
            §§goto(addr41);
         }
         addr35:
         param4 = §§pop();
         if(!_loc5_)
         {
            addr38:
            §§push(param3);
            if(!_loc5_)
            {
               addr41:
               if(§§pop() < 32)
               {
                  addr45:
                  param3 = 32;
                  if(_loc6_ || param3)
                  {
                     §§goto(addr53);
                  }
                  §§goto(addr89);
               }
               addr53:
               §§push(§7j§.§else§);
               if(!(_loc5_ && param1))
               {
                  §§goto(addr94);
               }
               §§pop().setCanvasSize(param3,param4);
               §§goto(addr94);
            }
            §§goto(addr45);
         }
         addr94:
         if(§§pop())
         {
            §§push(§7j§.§else§);
            if(!(_loc5_ && param3))
            {
               §§pop().§84§ = new Rectangle(param1,param2,param3,param4);
               addr89:
               §§push(§7j§.§else§);
            }
         }
         §25§ = Math.min(param3 / §&d§,param4 / §6k§);
         §§push(§§findproperty(§9r§));
         §§push(param3);
         if(!_loc5_)
         {
            §§push(§§pop() / §&d§);
         }
         §§pop().§9r§ = §§pop();
         if(!(_loc5_ && param1))
         {
            §§push(§§findproperty(§'A§));
            §§push(param4);
            if(!(_loc5_ && param3))
            {
               §§push(§§pop() / §6k§);
            }
            §§pop().§'A§ = §§pop();
         }
         §1!2§.§,!Y§(param3,param4);
      }
   }
}
