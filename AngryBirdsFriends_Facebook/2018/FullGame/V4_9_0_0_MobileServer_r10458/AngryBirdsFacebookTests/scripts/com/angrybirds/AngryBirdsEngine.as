package com.angrybirds
{
   import com.angrybirds.data.level.LevelModel;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.engine.controllers.ILevelMainController;
   import com.rovio.BasicGame;
   import com.rovio.factory.FPSMeter;
   import com.rovio.spritesheet.ISpriteSheetContainer;
   import flash.geom.Rectangle;
   import starling.core.Starling;
   
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
      
      public static function init(container:BasicGame, screenWidth:int, screenHeight:int) : void
      {
         smApp = container;
         SCREEN_WIDTH = screenWidth;
         SCREEN_HEIGHT = screenHeight;
         smFpsMeter = new FPSMeter(true,container.canvas);
      }
      
      public static function initializeGraphics(spriteSheetContainer:ISpriteSheetContainer, listener:Function = null) : void
      {
         smLevelMain.initializeGraphics(spriteSheetContainer,listener);
      }
      
      public static function addNewGraphics(spriteSheetContainer:ISpriteSheetContainer, items:Array, listener:Function = null) : void
      {
         smLevelMain.addNewGraphics(spriteSheetContainer,items,listener);
      }
      
      public static function loadLevel(data:LevelModel) : void
      {
         smLevelMain.init(data);
      }
      
      public static function setController(controller:ILevelMainController) : void
      {
         sLogicController = controller;
         smLevelMain.setController(controller);
      }
      
      public static function get controller() : ILevelMainController
      {
         return sLogicController;
      }
      
      public static function setParticlesEnabled(value:Boolean) : void
      {
         smParticlesEnabled = value;
         smLevelMain.background.setParticlesEnabled(value);
      }
      
      public static function getParticlesEnabled() : Boolean
      {
         return smParticlesEnabled;
      }
      
      public static function setEngineViewArea(x:Number, y:Number, w:Number, h:Number, disableScaling:Boolean) : void
      {
         if(h < 32)
         {
            h = 32;
         }
         if(w < 32)
         {
            w = 32;
         }
         smApplicationScale = Math.min(w / SCREEN_WIDTH,h / SCREEN_HEIGHT);
         sWidthScale = w / SCREEN_WIDTH;
         sHeightScale = h / SCREEN_HEIGHT;
         Starling.maintainWidth = sWidthScale > sHeightScale;
         if(disableScaling)
         {
            smApplicationScale = 1;
            sWidthScale = 1;
            sHeightScale = 1;
            Starling.noScale = true;
         }
         Starling.viewPort = new Rectangle(x,y,w,h);
         smLevelMain.screenSizeChanged(w,h,sWidthScale,sHeightScale);
      }
   }
}
