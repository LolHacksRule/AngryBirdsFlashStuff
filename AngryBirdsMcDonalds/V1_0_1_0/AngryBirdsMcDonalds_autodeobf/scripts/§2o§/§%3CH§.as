package §2o§
{
   import §!!e§.§<!S§;
   import §"!C§.§8?§;
   import §"v§.§5!T§;
   import §,!i§.§6k§;
   import §?;§.§?!]§;
   import §@!b§.§@!k§;
   import §`!W§.§6p§;
   import §`!d§.§0%§;
   import flash.geom.Rectangle;
   
   public class §<H§
   {
      
      public static var §]A§:int = 0;
      
      public static var §<!T§:int = 0;
      
      public static var §=3§:§@!k§;
      
      public static var §!B§:§6p§;
      
      public static var §+!,§:Boolean = false;
      
      public static var §7!T§:§<H§ = null;
      
      public static var §-!V§:§8?§;
      
      public static var §9!5§:Boolean = true;
      
      public static var §&&§:Number = 1;
      
      public static var §6C§:Number = 1;
      
      public static var §^d§:Number = 1;
      
      private static var §+!=§:§?!]§ = null;
      
      private static var §45§:Boolean = false;
       
      
      public function §<H§()
      {
         super();
      }
      
      public static function §6N§() : Number
      {
         return §]A§ * §6C§;
      }
      
      public static function §0!§() : Number
      {
         return §<!T§ * §^d§;
      }
      
      public static function §5j§() : void
      {
         if(!§45§)
         {
            §45§ = true;
            if(§5!T§.§7U§)
            {
               §5!T§.§7U§.isPaused = true;
            }
            if(§5!T§.§!e§)
            {
               §5!T§.§!e§.§,v§(false);
            }
         }
      }
      
      public static function §!d§() : void
      {
         if(§45§)
         {
            §45§ = false;
            if(§5!T§.§7U§)
            {
               §5!T§.§7U§.isPaused = false;
            }
            if(§5!T§.§!e§)
            {
               §5!T§.§!e§.§,v§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §45§;
      }
      
      public static function init(param1:§8?§, param2:int, param3:int) : void
      {
         §-!V§ = param1;
         §]A§ = param2;
         §<!T§ = param3;
         §!B§ = new §6p§(true,param1.canvas);
      }
      
      public static function §20§(param1:XML, param2:XML) : void
      {
         §<!S§.§20§(param1,param2);
      }
      
      public static function §;!§(param1:§6k§, param2:Array, param3:Function = null) : void
      {
         §=3§.§;!§(param1,param2,param3);
      }
      
      public static function §>!R§(param1:§0%§) : void
      {
         §=3§.init(param1);
      }
      
      public static function setController(param1:§?!]§) : void
      {
         §+!=§ = param1;
         §=3§.setController(param1);
      }
      
      public static function get § u§() : §?!]§
      {
         return §+!=§;
      }
      
      public static function §#!X§(param1:Boolean) : void
      {
         §9!5§ = param1;
         §=3§.background.§#!X§(param1);
      }
      
      public static function §8!$§() : Boolean
      {
         return §9!5§;
      }
      
      public static function §"F§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§5!T§.§!e§)
         {
            §5!T§.§!e§.§@!j§ = new Rectangle(param1,param2,param3,param4);
            §5!T§.§!e§.setCanvasSize(param3,param4);
         }
         §&&§ = Math.min(param3 / §]A§,param4 / §<!T§);
         §6C§ = param3 / §]A§;
         §^d§ = param4 / §<!T§;
         §=3§.§`!i§(param3,param4);
      }
   }
}
