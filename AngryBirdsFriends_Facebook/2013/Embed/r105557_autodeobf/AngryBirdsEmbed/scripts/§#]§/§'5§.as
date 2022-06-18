package §#]§
{
   import § `§.§,!G§;
   import §3;§.§&!§;
   import §4y§.§9%§;
   import §9!#§.§5y§;
   import §;'§.§?!D§;
   import §<!M§.§1!&§;
   import §?!8§.§&Y§;
   import §??§.§5!@§;
   import flash.geom.Rectangle;
   
   public class §'5§
   {
      
      public static var §@!0§:int = 0;
      
      public static var §2!M§:int = 0;
      
      public static var §^;§:§?!D§;
      
      public static var §#!>§:§&Y§;
      
      public static var §7!!§:Boolean = false;
      
      public static var §@5§:§'5§ = null;
      
      public static var §-!<§:§9%§;
      
      public static var §2L§:Boolean = true;
      
      public static var §"D§:Number = 1;
      
      public static var §@!=§:Number = 1;
      
      public static var §1G§:Number = 1;
      
      private static var §"!9§:§,!G§ = null;
      
      private static var §+o§:Boolean = false;
       
      
      public function §'5§()
      {
         super();
      }
      
      public static function §?a§() : Number
      {
         return §@!0§ * §@!=§;
      }
      
      public static function §[b§() : Number
      {
         return §2!M§ * §1G§;
      }
      
      public static function pause() : void
      {
         if(!§+o§)
         {
            §+o§ = true;
            if(§5!@§.§2x§)
            {
               §5!@§.§2x§.isPaused = true;
            }
            if(§5!@§.§8%§)
            {
               §5!@§.§8%§.§?J§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§+o§)
         {
            §+o§ = false;
            if(§5!@§.§2x§)
            {
               §5!@§.§2x§.isPaused = false;
            }
            if(§5!@§.§8%§)
            {
               §5!@§.§8%§.§?J§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §+o§;
      }
      
      public static function init(param1:§9%§, param2:int, param3:int) : void
      {
         §-!<§ = param1;
         §@!0§ = param2;
         §2!M§ = param3;
         §#!>§ = new §&Y§(true,param1.canvas);
      }
      
      public static function §`n§(param1:XML, param2:XML) : void
      {
         §5y§.§`n§(param1,param2);
      }
      
      public static function §&K§(param1:§&!§, param2:Array, param3:Function = null) : void
      {
         §^;§.§&K§(param1,param2,param3);
      }
      
      public static function §#!#§(param1:§1!&§) : void
      {
         §^;§.init(param1);
      }
      
      public static function §0o§(param1:§,!G§) : void
      {
         §"!9§ = param1;
         §^;§.§0o§(param1);
      }
      
      public static function get controller() : §,!G§
      {
         return §"!9§;
      }
      
      public static function §4!K§(param1:Boolean) : void
      {
         §2L§ = param1;
         §^;§.background.§4!K§(param1);
      }
      
      public static function §`M§() : Boolean
      {
         return §2L§;
      }
      
      public static function §0N§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §"D§ = Math.min(param3 / §@!0§,param4 / §2!M§);
         §@!=§ = param3 / §@!0§;
         §1G§ = param4 / §2!M§;
         §5!@§.§[9§ = new Rectangle(param1,param2,param3,param4);
         §5!@§.§=!H§ = true;
         §^;§.§^p§(param3,param4);
      }
   }
}
