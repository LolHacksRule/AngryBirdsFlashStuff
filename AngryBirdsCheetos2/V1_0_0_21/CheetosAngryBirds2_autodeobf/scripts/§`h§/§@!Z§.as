package §`h§
{
   import § g§.§;!N§;
   import §!r§.§3!!§;
   import §+6§.§7i§;
   import §,§.§ p§;
   import §6;§.§%[§;
   import §>^§.§9!<§;
   import §`![§.§!!K§;
   import flash.geom.Rectangle;
   import §throw§.§3W§;
   
   public class §@!Z§
   {
      
      public static var §?!L§:int = 0;
      
      public static var §"r§:int = 0;
      
      public static var §;!,§:§ p§;
      
      public static var §+!-§:§9!<§;
      
      public static var §1!#§:Boolean = false;
      
      public static var §9!]§:§@!Z§ = null;
      
      public static var §^Y§:§3W§;
      
      public static var §2C§:Boolean = true;
      
      public static var §7!%§:Number = 1;
      
      public static var §<X§:Number = 1;
      
      public static var §5I§:Number = 1;
      
      private static var §1H§:§;!N§ = null;
      
      private static var §`>§:Boolean = false;
       
      
      public function §@!Z§()
      {
         super();
      }
      
      public static function §!!e§() : Number
      {
         return §?!L§ * §<X§;
      }
      
      public static function §11§() : Number
      {
         return §"r§ * §5I§;
      }
      
      public static function §@0§() : void
      {
         if(!§`>§)
         {
            §`>§ = true;
            if(§%[§.§6+§)
            {
               §%[§.§6+§.isPaused = true;
            }
            if(§%[§.§`1§)
            {
               §%[§.§`1§.§8!L§(false);
            }
         }
      }
      
      public static function §,R§() : void
      {
         if(§`>§)
         {
            §`>§ = false;
            if(§%[§.§6+§)
            {
               §%[§.§6+§.isPaused = false;
            }
            if(§%[§.§`1§)
            {
               §%[§.§`1§.§8!L§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §`>§;
      }
      
      public static function init(param1:§3W§, param2:int, param3:int) : void
      {
         §^Y§ = param1;
         §?!L§ = param2;
         §"r§ = param3;
         §+!-§ = new §9!<§(true,param1.canvas);
      }
      
      public static function §'y§(param1:XML, param2:XML) : void
      {
         §3!!§.§'y§(param1,param2);
      }
      
      public static function §9S§(param1:§7i§, param2:Array, param3:Function = null) : void
      {
         §;!,§.§9S§(param1,param2,param3);
      }
      
      public static function §2Q§(param1:§!!K§) : void
      {
         §;!,§.init(param1);
      }
      
      public static function §=!2§(param1:§;!N§) : void
      {
         §1H§ = param1;
         §;!,§.§=!2§(param1);
      }
      
      public static function get §^&§() : §;!N§
      {
         return §1H§;
      }
      
      public static function §1L§(param1:Boolean) : void
      {
         §2C§ = param1;
         §;!,§.background.§1L§(param1);
      }
      
      public static function §4!X§() : Boolean
      {
         return §2C§;
      }
      
      public static function §"u§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §7!%§ = Math.min(param3 / §?!L§,param4 / §"r§);
         §<X§ = param3 / §?!L§;
         §5I§ = param4 / §"r§;
         §%[§.§^'§ = new Rectangle(param1,param2,param3,param4);
         §%[§.§%!=§ = true;
         §;!,§.§9!0§(param3,param4);
      }
   }
}
