package §`t§
{
   import §"!>§.§=r§;
   import §#;§.§4!8§;
   import §',§.§0W§;
   import §-p§.§=N§;
   import §8!G§.§1w§;
   import §;%§.§8o§;
   import §>z§.§!8§;
   import §^V§.§;n§;
   import flash.geom.Rectangle;
   
   public class §^?§
   {
      
      public static var §7i§:int = 0;
      
      public static var §3[§:int = 0;
      
      public static var §]!%§:§4!8§;
      
      public static var §0b§:§=N§;
      
      public static var §8!=§:Boolean = false;
      
      public static var §'5§:§^?§ = null;
      
      public static var §?f§:§=r§;
      
      public static var §+!%§:Boolean = true;
      
      public static var §3;§:Number = 1;
      
      public static var §3!,§:Number = 1;
      
      public static var §7!$§:Number = 1;
      
      private static var §'D§:§!8§ = null;
      
      private static var §?Q§:Boolean = false;
       
      
      public function §^?§()
      {
         super();
      }
      
      public static function §?!=§() : Number
      {
         return §7i§ * §3!,§;
      }
      
      public static function § C§() : Number
      {
         return §3[§ * §7!$§;
      }
      
      public static function pause() : void
      {
         if(!§?Q§)
         {
            §?Q§ = true;
            if(§8o§.§-X§)
            {
               §8o§.§-X§.isPaused = true;
            }
            if(§8o§.§5J§)
            {
               §8o§.§5J§.§set §(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§?Q§)
         {
            §?Q§ = false;
            if(§8o§.§-X§)
            {
               §8o§.§-X§.isPaused = false;
            }
            if(§8o§.§5J§)
            {
               §8o§.§5J§.§set §(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §?Q§;
      }
      
      public static function init(param1:§=r§, param2:int, param3:int) : void
      {
         §?f§ = param1;
         §7i§ = param2;
         §3[§ = param3;
         §0b§ = new §=N§(true,param1.canvas);
      }
      
      public static function §,!-§(param1:XML, param2:XML) : void
      {
         §;n§.§,!-§(param1,param2);
      }
      
      public static function §00§(param1:§0W§, param2:Array, param3:Function = null) : void
      {
         §]!%§.§00§(param1,param2,param3);
      }
      
      public static function §;k§(param1:§1w§) : void
      {
         §]!%§.init(param1);
      }
      
      public static function §5S§(param1:§!8§) : void
      {
         §'D§ = param1;
         §]!%§.§5S§(param1);
      }
      
      public static function get controller() : §!8§
      {
         return §'D§;
      }
      
      public static function §6!<§(param1:Boolean) : void
      {
         §+!%§ = param1;
         §]!%§.background.§6!<§(param1);
      }
      
      public static function §8! §() : Boolean
      {
         return §+!%§;
      }
      
      public static function §#!0§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§8o§.§5J§)
         {
            §8o§.§5J§.§9I§ = new Rectangle(param1,param2,param3,param4);
            §8o§.§5J§.setCanvasSize(param3,param4);
         }
         §3;§ = Math.min(param3 / §7i§,param4 / §3[§);
         §3!,§ = param3 / §7i§;
         §7!$§ = param4 / §3[§;
         §]!%§.§^!C§(param3,param4);
      }
   }
}
