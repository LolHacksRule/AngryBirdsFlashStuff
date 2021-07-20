package §?!Y§
{
   import §6w§.§9!%§;
   import §7!>§.Starling;
   import §91§.§else§;
   import §<u§.FPSMeter;
   import §>!_§.LevelModel;
   import §]!@§.LevelMain;
   import §`y§.BasicGame;
   import flash.geom.Rectangle;
   import §package§.LevelItemManager;
   
   public class §`S§
   {
      
      public static var SCREEN_WIDTH:int = 0;
      
      public static var SCREEN_HEIGHT:int = 0;
      
      public static var §[o§:LevelMain;
      
      public static var §5I§:FPSMeter;
      
      public static var DEBUG_MODE_ENABLED:Boolean = false;
      
      public static var §"!d§:§`S§ = null;
      
      public static var §=F§:BasicGame;
      
      public static var §0>§:Boolean = true;
      
      public static var §3! §:Number = 1;
      
      public static var §`!A§:Number = 1;
      
      public static var §4+§:Number = 1;
      
      private static var §4N§:§else§ = null;
      
      private static var §5h§:Boolean = false;
       
      
      public function §`S§()
      {
         super();
      }
      
      public static function §7$§() : Number
      {
         return SCREEN_WIDTH * §`!A§;
      }
      
      public static function §4v§() : Number
      {
         return SCREEN_HEIGHT * §4+§;
      }
      
      public static function pause() : void
      {
         if(!§5h§)
         {
            §5h§ = true;
            if(Starling.§5K§)
            {
               Starling.§5K§.isPaused = true;
            }
            if(Starling.§7!+§)
            {
               Starling.§7!+§.§&!_§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§5h§)
         {
            §5h§ = false;
            if(Starling.§5K§)
            {
               Starling.§5K§.isPaused = false;
            }
            if(Starling.§7!+§)
            {
               Starling.§7!+§.§&!_§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §5h§;
      }
      
      public static function init(param1:BasicGame, param2:int, param3:int) : void
      {
         §=F§ = param1;
         SCREEN_WIDTH = param2;
         SCREEN_HEIGHT = param3;
         §5I§ = new FPSMeter(true,param1.canvas);
      }
      
      public static function § !i§(param1:XML, param2:XML) : void
      {
         LevelItemManager.§ !i§(param1,param2);
      }
      
      public static function §7!Z§(param1:§9!%§, param2:Array, param3:Function = null) : void
      {
         §[o§.§7!Z§(param1,param2,param3);
      }
      
      public static function §?h§(param1:LevelModel) : void
      {
         §[o§.init(param1);
      }
      
      public static function setController(param1:§else§) : void
      {
         §4N§ = param1;
         §[o§.setController(param1);
      }
      
      public static function get controller() : §else§
      {
         return §4N§;
      }
      
      public static function §^!D§(param1:Boolean) : void
      {
         §0>§ = param1;
         §[o§.background.§^!D§(param1);
      }
      
      public static function §-!,§() : Boolean
      {
         return §0>§;
      }
      
      public static function §!+§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(Starling.§7!+§)
         {
            Starling.§7!+§.§#L§ = new Rectangle(param1,param2,param3,param4);
            Starling.§7!+§.setCanvasSize(param3,param4);
         }
         §3! § = Math.min(param3 / SCREEN_WIDTH,param4 / SCREEN_HEIGHT);
         §`!A§ = param3 / SCREEN_WIDTH;
         §4+§ = param4 / SCREEN_HEIGHT;
         §[o§.§[!2§(param3,param4);
      }
   }
}
