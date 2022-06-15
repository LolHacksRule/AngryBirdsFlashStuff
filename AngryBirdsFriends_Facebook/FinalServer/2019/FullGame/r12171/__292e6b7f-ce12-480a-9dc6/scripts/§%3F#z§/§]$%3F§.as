package §?#z§
{
   import §"#k§.Starling;
   import §##y§.§#$"§;
   import §#g§.§8§;
   import §6"p§.§4"k§;
   import §6#h§.§]!d§;
   import §7#$§.§?# §;
   import §9!o§.§=!B§;
   import flash.geom.Rectangle;
   
   public class §]$?§
   {
      
      public static var §!!x§:int = 0;
      
      public static var §@!=§:int = 0;
      
      public static var §2#§:§8#3§;
      
      public static var §@7§:§4"k§;
      
      public static var DEBUG_MODE_ENABLED:Boolean = false;
      
      public static var §^"V§:§]$?§ = null;
      
      public static var §;u§:§#$"§;
      
      public static var §1!K§:Boolean = true;
      
      public static var §2"^§:Number = 1;
      
      public static var §6p§:Number = 1;
      
      public static var §[#U§:Number = 1;
      
      private static var §]R§:§]!d§ = null;
      
      private static var §2#&§:Boolean = false;
       
      
      public function §]$?§()
      {
         super();
      }
      
      public static function §@S§() : Number
      {
         return §!!x§ * §6p§;
      }
      
      public static function §""4§() : Number
      {
         return §@!=§ * §[#U§;
      }
      
      public static function pause() : void
      {
         if(!§2#&§)
         {
            §2#&§ = true;
            if(Starling.§%",§)
            {
               Starling.§%",§.isPaused = true;
            }
            if(Starling.§4$#§)
            {
               Starling.§4$#§.§?!o§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§2#&§)
         {
            §2#&§ = false;
            if(Starling.§%",§)
            {
               Starling.§%",§.isPaused = false;
            }
            if(Starling.§4$#§)
            {
               Starling.§4$#§.§?!o§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §2#&§;
      }
      
      public static function init(param1:§#$"§, param2:int, param3:int) : void
      {
         §;u§ = param1;
         §!!x§ = param2;
         §@!=§ = param3;
         §@7§ = new §4"k§(true,param1.canvas);
      }
      
      public static function §?"f§(param1:§=!B§, param2:Function = null) : void
      {
         §2#§.§?"f§(param1,param2);
      }
      
      public static function §;#b§(param1:§=!B§, param2:Array, param3:Function = null) : void
      {
         §2#§.§;#b§(param1,param2,param3);
      }
      
      public static function loadLevel(param1:§?# §) : void
      {
         §2#§.init(param1);
      }
      
      public static function setController(param1:§]!d§) : void
      {
         §]R§ = param1;
         §2#§.setController(param1);
      }
      
      public static function get §;r§() : §]!d§
      {
         return §]R§;
      }
      
      public static function §-!$§(param1:Boolean) : void
      {
         §1!K§ = param1;
         §2#§.background.§-!$§(param1);
      }
      
      public static function §4!q§() : Boolean
      {
         return §1!K§;
      }
      
      public static function §3!<§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §2"^§ = Math.min(param3 / §!!x§,param4 / §@!=§);
         §6p§ = param3 / §!!x§;
         §[#U§ = param4 / §@!=§;
         Starling.§^6§ = §6p§ > §[#U§;
         if(param5)
         {
            §2"^§ = 1;
            §6p§ = 1;
            §[#U§ = 1;
            Starling.§4#g§ = true;
         }
         Starling.§]#g§ = new Rectangle(param1,param2,param3,param4);
         §2#§.§9#3§(param3,param4,§6p§,§[#U§);
      }
   }
}
