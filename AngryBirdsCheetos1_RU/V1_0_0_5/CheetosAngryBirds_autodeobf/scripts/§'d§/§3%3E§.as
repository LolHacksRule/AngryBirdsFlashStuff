package §'d§
{
   import §!4§.§7d§;
   import §%b§.§0!Z§;
   import §0C§.§;!Q§;
   import §>!]§.§3Y§;
   import §>V§.§8O§;
   import §?!H§.§!h§;
   import §]_§.§!F§;
   import §`2§.§>Z§;
   import flash.geom.Rectangle;
   
   public class §3>§
   {
      
      public static var §'R§:int = 0;
      
      public static var §'Z§:int = 0;
      
      public static var §8!$§:§0!Z§;
      
      public static var §%§:§7d§;
      
      public static var § -§:Boolean = false;
      
      public static var §<K§:§3>§ = null;
      
      public static var §9!L§:§>Z§;
      
      public static var §?!@§:Boolean = true;
      
      public static var §@!X§:Number = 1;
      
      public static var §5F§:Number = 1;
      
      public static var §&e§:Number = 1;
      
      private static var §!!X§:§3Y§ = null;
      
      private static var §=?§:Boolean = false;
       
      
      public function §3>§()
      {
         super();
      }
      
      public static function §08§() : Number
      {
         return §'R§ * §5F§;
      }
      
      public static function §!m§() : Number
      {
         return §'Z§ * §&e§;
      }
      
      public static function §-!>§() : void
      {
         if(!§=?§)
         {
            §=?§ = true;
            if(§!F§.§5!H§)
            {
               §!F§.§5!H§.isPaused = true;
            }
            if(§!F§.§[M§)
            {
               §!F§.§[M§.§<!3§(false);
            }
         }
      }
      
      public static function §7k§() : void
      {
         if(§=?§)
         {
            §=?§ = false;
            if(§!F§.§5!H§)
            {
               §!F§.§5!H§.isPaused = false;
            }
            if(§!F§.§[M§)
            {
               §!F§.§[M§.§<!3§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §=?§;
      }
      
      public static function init(param1:§>Z§, param2:int, param3:int) : void
      {
         §9!L§ = param1;
         §'R§ = param2;
         §'Z§ = param3;
         §%§ = new §7d§(true,param1.canvas);
      }
      
      public static function §!r§(param1:XML, param2:XML) : void
      {
         §!h§.§!r§(param1,param2);
      }
      
      public static function §,4§(param1:§8O§, param2:Array, param3:Function = null) : void
      {
         §8!$§.§,4§(param1,param2,param3);
      }
      
      public static function §"!3§(param1:§;!Q§) : void
      {
         §8!$§.init(param1);
      }
      
      public static function § !G§(param1:§3Y§) : void
      {
         §!!X§ = param1;
         §8!$§.§ !G§(param1);
      }
      
      public static function get §;O§() : §3Y§
      {
         return §!!X§;
      }
      
      public static function §2!_§(param1:Boolean) : void
      {
         §?!@§ = param1;
         §8!$§.background.§2!_§(param1);
      }
      
      public static function §?!G§() : Boolean
      {
         return §?!@§;
      }
      
      public static function §,E§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§!F§.§[M§)
         {
            §!F§.§[M§.§-D§ = new Rectangle(param1,param2,param3,param4);
            §!F§.§[M§.setCanvasSize(param3,param4);
         }
         §@!X§ = Math.min(param3 / §'R§,param4 / §'Z§);
         §5F§ = param3 / §'R§;
         §&e§ = param4 / §'Z§;
         §8!$§.§'!F§(param3,param4);
      }
   }
}
