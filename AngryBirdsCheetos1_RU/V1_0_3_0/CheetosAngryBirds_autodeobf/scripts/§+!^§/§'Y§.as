package §+!^§
{
   import §'G§.§6!]§;
   import §+R§.§9x§;
   import §0A§.§@+§;
   import §7!P§.§@?§;
   import §8E§.§%!0§;
   import §9T§.§=!^§;
   import §>N§.§"u§;
   import §^9§.§3A§;
   import flash.geom.Rectangle;
   
   public class §'Y§
   {
      
      public static var §8o§:int = 0;
      
      public static var §&I§:int = 0;
      
      public static var §@j§:§=!^§;
      
      public static var §<]§:§@?§;
      
      public static var §^B§:Boolean = false;
      
      public static var §;W§:§'Y§ = null;
      
      public static var §1!&§:§@+§;
      
      public static var §;!Q§:Boolean = true;
      
      public static var §0!§:Number = 1;
      
      public static var §;x§:Number = 1;
      
      public static var §=!a§:Number = 1;
      
      private static var §+!B§:§%!0§ = null;
      
      private static var §?3§:Boolean = false;
       
      
      public function §'Y§()
      {
         super();
      }
      
      public static function §4!>§() : Number
      {
         return §8o§ * §;x§;
      }
      
      public static function §'!3§() : Number
      {
         return §&I§ * §=!a§;
      }
      
      public static function § D§() : void
      {
         if(!§?3§)
         {
            §?3§ = true;
            if(§"u§.§4f§)
            {
               §"u§.§4f§.isPaused = true;
            }
            if(§"u§.§-2§)
            {
               §"u§.§-2§.§ m§(false);
            }
         }
      }
      
      public static function §"r§() : void
      {
         if(§?3§)
         {
            §?3§ = false;
            if(§"u§.§4f§)
            {
               §"u§.§4f§.isPaused = false;
            }
            if(§"u§.§-2§)
            {
               §"u§.§-2§.§ m§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §?3§;
      }
      
      public static function init(param1:§@+§, param2:int, param3:int) : void
      {
         §1!&§ = param1;
         §8o§ = param2;
         §&I§ = param3;
         §<]§ = new §@?§(true,param1.canvas);
      }
      
      public static function §#!§(param1:XML, param2:XML) : void
      {
         §6!]§.§#!§(param1,param2);
      }
      
      public static function §0$§(param1:§9x§, param2:Array, param3:Function = null) : void
      {
         §@j§.§0$§(param1,param2,param3);
      }
      
      public static function §"!Y§(param1:§3A§) : void
      {
         §@j§.init(param1);
      }
      
      public static function §9!C§(param1:§%!0§) : void
      {
         §+!B§ = param1;
         §@j§.§9!C§(param1);
      }
      
      public static function get §>k§() : §%!0§
      {
         return §+!B§;
      }
      
      public static function §2!;§(param1:Boolean) : void
      {
         §;!Q§ = param1;
         §@j§.background.§2!;§(param1);
      }
      
      public static function §2,§() : Boolean
      {
         return §;!Q§;
      }
      
      public static function §`!"§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§"u§.§-2§)
         {
            §"u§.§-2§.§5!=§ = new Rectangle(param1,param2,param3,param4);
            §"u§.§-2§.setCanvasSize(param3,param4);
         }
         §0!§ = Math.min(param3 / §8o§,param4 / §&I§);
         §;x§ = param3 / §8o§;
         §=!a§ = param4 / §&I§;
         §@j§.§;!3§(param3,param4);
      }
   }
}
