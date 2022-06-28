package §-!>§
{
   import §"!!§.BasicGame;
   import §"$§.Starling;
   import §#!X§.LevelModel;
   import §'N§.FPSMeter;
   import §3!c§.§<'§;
   import §9!H§.§"!L§;
   import §?A§.LevelMain;
   import §^L§.LevelItemManager;
   import flash.geom.Rectangle;
   
   public class §4!T§
   {
      
      public static var SCREEN_WIDTH:int = 0;
      
      public static var SCREEN_HEIGHT:int = 0;
      
      public static var §1t§:LevelMain;
      
      public static var §!!]§:FPSMeter;
      
      public static var DEBUG_MODE_ENABLED:Boolean = false;
      
      public static var §>N§:§4!T§ = null;
      
      public static var §%!K§:BasicGame;
      
      public static var §2!D§:Boolean = true;
      
      public static var §-!#§:Number = 1;
      
      public static var §`!Y§:Number = 1;
      
      public static var §=!_§:Number = 1;
      
      private static var §-4§:§"!L§ = null;
      
      private static var §=C§:Boolean = false;
       
      
      public function §4!T§()
      {
         super();
      }
      
      public static function §7"§() : Number
      {
         return SCREEN_WIDTH * §`!Y§;
      }
      
      public static function §8_§() : Number
      {
         return SCREEN_HEIGHT * §=!_§;
      }
      
      public static function pause() : void
      {
         if(!§=C§)
         {
            §=C§ = true;
            if(Starling.§@7§)
            {
               Starling.§@7§.isPaused = true;
            }
            if(Starling.§'!A§)
            {
               Starling.§'!A§.§>w§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§=C§)
         {
            §=C§ = false;
            if(Starling.§@7§)
            {
               Starling.§@7§.isPaused = false;
            }
            if(Starling.§'!A§)
            {
               Starling.§'!A§.§>w§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §=C§;
      }
      
      public static function init(param1:BasicGame, param2:int, param3:int) : void
      {
         §%!K§ = param1;
         SCREEN_WIDTH = param2;
         SCREEN_HEIGHT = param3;
         §!!]§ = new FPSMeter(true,param1.canvas);
      }
      
      public static function §&a§(param1:XML, param2:XML) : void
      {
         LevelItemManager.§&a§(param1,param2);
      }
      
      public static function §'!>§(param1:§<'§, param2:Array, param3:Function = null) : void
      {
         §1t§.§'!>§(param1,param2,param3);
      }
      
      public static function §%<§(param1:LevelModel) : void
      {
         §1t§.init(param1);
      }
      
      public static function setController(param1:§"!L§) : void
      {
         §-4§ = param1;
         §1t§.setController(param1);
      }
      
      public static function get controller() : §"!L§
      {
         return §-4§;
      }
      
      public static function §]z§(param1:Boolean) : void
      {
         §2!D§ = param1;
         §1t§.background.§]z§(param1);
      }
      
      public static function §>!>§() : Boolean
      {
         return §2!D§;
      }
      
      public static function §[Y§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(Starling.§'!A§)
         {
            Starling.§'!A§.§<H§ = new Rectangle(param1,param2,param3,param4);
            Starling.§'!A§.setCanvasSize(param3,param4);
         }
         §-!#§ = Math.min(param3 / SCREEN_WIDTH,param4 / SCREEN_HEIGHT);
         §`!Y§ = param3 / SCREEN_WIDTH;
         §=!_§ = param4 / SCREEN_HEIGHT;
         §1t§.§6!^§(param3,param4);
      }
   }
}
