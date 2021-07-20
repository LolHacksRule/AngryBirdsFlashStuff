package com.angrybirds
{
   import com.rovio.spritesheet.ISpriteSheetContainer;
   import com.angrybirds.data.level.LevelModel;
   import com.rovio.BasicGame;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.engine.controllers.ILevelMainController;
   import starling.core.Starling;
   import com.rovio.factory.FPSMeter;
   import flash.geom.Rectangle;
   
   public class AngryBirdsEngine
   {
      
      public static var SCREEN_WIDTH:int = 0;
      
      public static var SCREEN_HEIGHT:int = 0;
      
      public static var smLevelMain:LevelMain;
      
      public static var smFpsMeter:FPSMeter;
      
      public static var DEBUG_MODE_ENABLED:Boolean = false;
      
      public static var smEngine:AngryBirdsEngine = null;
      
      public static var smApp:BasicGame;
      
      public static var smParticlesEnabled:Boolean = true;
      
      public static var smApplicationScale:Number = 1;
      
      public static var sWidthScale:Number = 1;
      
      public static var sHeightScale:Number = 1;
      
      private static var sLogicController:ILevelMainController = null;
      
      private static var sPause:Boolean = false;
       
      
      public function AngryBirdsEngine()
      {
         super();
      }
      
      public static function getCurrentScreenWidth() : Number
      {
         return SCREEN_WIDTH * sWidthScale;
      }
      
      public static function getCurrentScreenHeight() : Number
      {
         return SCREEN_HEIGHT * sHeightScale;
      }
      
      public static function pause() : void
      {
         if(!sPause)
         {
            sPause = true;
            if(Starling.juggler)
            {
               Starling.juggler.isPaused = true;
            }
            if(Starling.current)
            {
               Starling.current.enableMouse(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(sPause)
         {
            sPause = false;
            if(Starling.juggler)
            {
               Starling.juggler.isPaused = false;
            }
            if(Starling.current)
            {
               Starling.current.enableMouse(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return sPause;
      }
      
      public static function init(param1:BasicGame, param2:int, param3:int) : void
      {
         smApp = param1;
         SCREEN_WIDTH = param2;
         SCREEN_HEIGHT = param3;
         smFpsMeter = new FPSMeter(true,param1.canvas);
      }
      
      public static function initializeGraphics(param1:ISpriteSheetContainer, param2:Function = null) : void
      {
         smLevelMain.initializeGraphics(param1,param2);
      }
      
      public static function loadLevel(param1:LevelModel) : void
      {
         smLevelMain.init(param1);
      }
      
      public static function setController(param1:ILevelMainController) : void
      {
         sLogicController = param1;
         smLevelMain.setController(param1);
      }
      
      public static function get controller() : ILevelMainController
      {
         return sLogicController;
      }
      
      public static function setParticlesEnabled(param1:Boolean) : void
      {
         smParticlesEnabled = param1;
         smLevelMain.background.setParticlesEnabled(param1);
      }
      
      public static function getParticlesEnabled() : Boolean
      {
         return smParticlesEnabled;
      }
      
      public static function setEngineViewArea(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         smApplicationScale = Math.min(param3 / SCREEN_WIDTH,param4 / SCREEN_HEIGHT);
         sWidthScale = param3 / SCREEN_WIDTH;
         sHeightScale = param4 / SCREEN_HEIGHT;
         Starling.viewPort = new Rectangle(param1,param2,param3,param4);
         Starling.maintainWidth = sWidthScale > sHeightScale;
         smLevelMain.screenSizeChanged(param3,param4,sWidthScale,sHeightScale);
      }
   }
}
