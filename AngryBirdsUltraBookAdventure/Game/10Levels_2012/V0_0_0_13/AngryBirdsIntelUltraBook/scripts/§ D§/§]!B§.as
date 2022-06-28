package § D§
{
   import §"L§.LevelModel;
   import §,!O§.BasicGame;
   import §0P§.Starling;
   import §2!?§.§7!W§;
   import §2!H§.LevelMain;
   import §6b§.FPSMeter;
   import §;T§.LevelItemManager;
   import §`u§.§@K§;
   import flash.geom.Rectangle;
   
   public class §]!B§
   {
      
      public static var SCREEN_WIDTH:int = 0;
      
      public static var SCREEN_HEIGHT:int = 0;
      
      public static var §>F§:LevelMain;
      
      public static var §6_§:FPSMeter;
      
      public static var DEBUG_MODE_ENABLED:Boolean = false;
      
      public static var §3D§:§]!B§ = null;
      
      public static var §%h§:BasicGame;
      
      public static var §get §:Boolean = true;
      
      public static var §<!3§:Number = 1;
      
      public static var §^F§:Number = 1;
      
      public static var §9$§:Number = 1;
      
      private static var §;#§:§7!W§ = null;
      
      private static var §,!a§:Boolean = false;
       
      
      public function §]!B§()
      {
         super();
      }
      
      public static function §"!U§() : Number
      {
         return SCREEN_WIDTH * §^F§;
      }
      
      public static function §=w§() : Number
      {
         return SCREEN_HEIGHT * §9$§;
      }
      
      public static function pause() : void
      {
         if(!§,!a§)
         {
            §,!a§ = true;
            if(Starling.§1!e§)
            {
               Starling.§1!e§.isPaused = true;
            }
            if(Starling.§!!F§)
            {
               Starling.§!!F§.§`&§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§,!a§)
         {
            §,!a§ = false;
            if(Starling.§1!e§)
            {
               Starling.§1!e§.isPaused = false;
            }
            if(Starling.§!!F§)
            {
               Starling.§!!F§.§`&§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §,!a§;
      }
      
      public static function init(param1:BasicGame, param2:int, param3:int) : void
      {
         §%h§ = param1;
         SCREEN_WIDTH = param2;
         SCREEN_HEIGHT = param3;
         §6_§ = new FPSMeter(true,param1.canvas);
      }
      
      public static function §&N§(param1:XML, param2:XML) : void
      {
         LevelItemManager.§&N§(param1,param2);
      }
      
      public static function §8W§(param1:§@K§, param2:Array, param3:Function = null) : void
      {
         §>F§.§8W§(param1,param2,param3);
      }
      
      public static function §]!R§(param1:LevelModel) : void
      {
         §>F§.init(param1);
      }
      
      public static function setController(param1:§7!W§) : void
      {
         §;#§ = param1;
         §>F§.setController(param1);
      }
      
      public static function get controller() : §7!W§
      {
         return §;#§;
      }
      
      public static function §^!Y§(param1:Boolean) : void
      {
         §get § = param1;
         §>F§.background.§^!Y§(param1);
      }
      
      public static function §]!#§() : Boolean
      {
         return §get §;
      }
      
      public static function §%e§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(Starling.§!!F§)
         {
            Starling.§!!F§.§8l§ = new Rectangle(param1,param2,param3,param4);
            Starling.§!!F§.setCanvasSize(param3,param4);
         }
         §<!3§ = Math.min(param3 / SCREEN_WIDTH,param4 / SCREEN_HEIGHT);
         §^F§ = param3 / SCREEN_WIDTH;
         §9$§ = param4 / SCREEN_HEIGHT;
         §>F§.§4,§(param3,param4);
      }
   }
}
