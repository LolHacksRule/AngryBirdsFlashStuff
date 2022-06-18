package §6"r§
{
   import §+!C§.§!!S§;
   import §9+§.Starling;
   import §<"P§.§[#$§;
   import §<"p§.§["i§;
   import §?$9§.§5!T§;
   import §@#§.§]#B§;
   import §["-§.§#R§;
   import flash.geom.Rectangle;
   
   public class §!#A§
   {
      
      public static var §-Y§:int = 0;
      
      public static var §<!q§:int = 0;
      
      public static var §#F§:§!!S§;
      
      public static var §set §:§["i§;
      
      public static var DEBUG_MODE_ENABLED:Boolean = false;
      
      public static var §7!A§:§!#A§ = null;
      
      public static var §>q§:§[#$§;
      
      public static var §#" §:Boolean = true;
      
      public static var §;"Z§:Number = 1;
      
      public static var §+K§:Number = 1;
      
      public static var §5O§:Number = 1;
      
      private static var §="#§:§#R§ = null;
      
      private static var §0$>§:Boolean = false;
       
      
      public function §!#A§()
      {
         super();
      }
      
      public static function §4#2§() : Number
      {
         return §-Y§ * §+K§;
      }
      
      public static function §%!o§() : Number
      {
         return §<!q§ * §5O§;
      }
      
      public static function pause() : void
      {
         if(!§0$>§)
         {
            §0$>§ = true;
            if(Starling.§]F§)
            {
               Starling.§]F§.isPaused = true;
            }
            if(Starling.§?$#§)
            {
               Starling.§?$#§.§,"v§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§0$>§)
         {
            §0$>§ = false;
            if(Starling.§]F§)
            {
               Starling.§]F§.isPaused = false;
            }
            if(Starling.§?$#§)
            {
               Starling.§?$#§.§,"v§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §0$>§;
      }
      
      public static function init(param1:§[#$§, param2:int, param3:int) : void
      {
         §>q§ = param1;
         §-Y§ = param2;
         §<!q§ = param3;
         §set § = new §["i§(true,param1.canvas);
      }
      
      public static function §^C§(param1:§5!T§, param2:Function = null) : void
      {
         §#F§.§^C§(param1,param2);
      }
      
      public static function §0#=§(param1:§5!T§, param2:Array, param3:Function = null) : void
      {
         §#F§.§0#=§(param1,param2,param3);
      }
      
      public static function loadLevel(param1:§]#B§) : void
      {
         §#F§.init(param1);
      }
      
      public static function setController(param1:§#R§) : void
      {
         §="#§ = param1;
         §#F§.setController(param1);
      }
      
      public static function get §=![§() : §#R§
      {
         return §="#§;
      }
      
      public static function §-$>§(param1:Boolean) : void
      {
         §#" § = param1;
         §#F§.background.§-$>§(param1);
      }
      
      public static function §-#?§() : Boolean
      {
         return §#" §;
      }
      
      public static function §+i§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §;"Z§ = Math.min(param3 / §-Y§,param4 / §<!q§);
         §+K§ = param3 / §-Y§;
         §5O§ = param4 / §<!q§;
         Starling.§`#S§ = §+K§ > §5O§;
         if(param5)
         {
            §;"Z§ = 1;
            §+K§ = 1;
            §5O§ = 1;
            Starling.§+$+§ = true;
         }
         Starling.§'"l§ = new Rectangle(param1,param2,param3,param4);
         §#F§.§]#=§(param3,param4,§+K§,§5O§);
      }
   }
}
