package §?m§
{
   import § !0§.§<O§;
   import § !G§.§%!]§;
   import §!X§.§86§;
   import §-!@§.§<!D§;
   import §@b§.§;M§;
   import §]!F§.§&!]§;
   import §`C§.§9!'§;
   import §default§.§%<§;
   import flash.geom.Rectangle;
   
   public class §7?§
   {
      
      public static var §;#§:int = 0;
      
      public static var §0h§:int = 0;
      
      public static var §4!H§:§86§;
      
      public static var §4J§:§%!]§;
      
      public static var §9h§:Boolean = false;
      
      public static var §@!=§:§7?§ = null;
      
      public static var §>!M§:§<O§;
      
      public static var §!!A§:Boolean = true;
      
      public static var §;!<§:Number = 1;
      
      public static var §&Z§:Number = 1;
      
      public static var §1H§:Number = 1;
      
      private static var §5!B§:§<!D§ = null;
      
      private static var §@!G§:Boolean = false;
       
      
      public function §7?§()
      {
         super();
      }
      
      public static function §for§() : Number
      {
         return §;#§ * §&Z§;
      }
      
      public static function §@,§() : Number
      {
         return §0h§ * §1H§;
      }
      
      public static function §3J§() : void
      {
         if(!§@!G§)
         {
            §@!G§ = true;
            if(§9!'§.§`!@§)
            {
               §9!'§.§`!@§.isPaused = true;
            }
            if(§9!'§.§7!Z§)
            {
               §9!'§.§7!Z§.§'!<§(false);
            }
         }
      }
      
      public static function §]!1§() : void
      {
         if(§@!G§)
         {
            §@!G§ = false;
            if(§9!'§.§`!@§)
            {
               §9!'§.§`!@§.isPaused = false;
            }
            if(§9!'§.§7!Z§)
            {
               §9!'§.§7!Z§.§'!<§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §@!G§;
      }
      
      public static function init(param1:§<O§, param2:int, param3:int) : void
      {
         §>!M§ = param1;
         §;#§ = param2;
         §0h§ = param3;
         §4J§ = new §%!]§(true,param1.canvas);
      }
      
      public static function §;!E§(param1:XML, param2:XML) : void
      {
         §%<§.§;!E§(param1,param2);
      }
      
      public static function §9!§(param1:§;M§, param2:Array, param3:Function = null) : void
      {
         §4!H§.§9!§(param1,param2,param3);
      }
      
      public static function §!!@§(param1:§&!]§) : void
      {
         §4!H§.init(param1);
      }
      
      public static function §-!P§(param1:§<!D§) : void
      {
         §5!B§ = param1;
         §4!H§.§-!P§(param1);
      }
      
      public static function get §75§() : §<!D§
      {
         return §5!B§;
      }
      
      public static function §?B§(param1:Boolean) : void
      {
         §!!A§ = param1;
         §4!H§.background.§?B§(param1);
      }
      
      public static function §`!>§() : Boolean
      {
         return §!!A§;
      }
      
      public static function §6!T§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§9!'§.§7!Z§)
         {
            §9!'§.§7!Z§.§>!D§ = new Rectangle(param1,param2,param3,param4);
            §9!'§.§7!Z§.setCanvasSize(param3,param4);
         }
         §;!<§ = Math.min(param3 / §;#§,param4 / §0h§);
         §&Z§ = param3 / §;#§;
         §1H§ = param4 / §0h§;
         §4!H§.§`D§(param3,param4);
      }
   }
}
