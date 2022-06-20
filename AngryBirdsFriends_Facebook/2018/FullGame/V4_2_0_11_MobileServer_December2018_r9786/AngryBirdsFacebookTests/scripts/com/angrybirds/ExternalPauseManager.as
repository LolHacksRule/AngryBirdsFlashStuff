package com.angrybirds
{
   import com.rovio.adobe.images.JPGEncoder;
   import com.rovio.events.EnginePauseEvent;
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import com.rovio.factory.Base64;
   import com.rovio.sound.SoundEngine;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.utils.setTimeout;
   import starling.core.Starling;
   
   public class ExternalPauseManager extends EventDispatcher
   {
      
      private static var mBlurFilter:BlurFilter;
       
      
      private var mResumeGame:Boolean;
      
      private var mStage:Stage;
      
      private var mIsPaused:Boolean = false;
      
      public function ExternalPauseManager(stage:Stage)
      {
         super();
         this.mStage = stage;
         this.init();
      }
      
      public function isExternallyPaused() : Boolean
      {
         return this.mIsPaused;
      }
      
      private function init() : void
      {
         ExternalInterfaceHandler.addCallback("pause",this.externalPauseHandler);
         ExternalInterfaceHandler.addCallback("resume",this.externalResumeHandler);
         ExternalInterfaceHandler.addCallback("resumeOnError",this.externalResumeHandler);
      }
      
      private function externalPauseHandler() : void
      {
         if(!this.mIsPaused)
         {
            this.mIsPaused = true;
            this.mResumeGame = !AngryBirdsEngine.isPaused;
            dispatchEvent(new EnginePauseEvent(EnginePauseEvent.ENGINE_PAUSE));
            AngryBirdsBase.singleton.exitFullScreen();
            this.getScreenshot();
            AngryBirdsBase.singleton.externalPause();
         }
      }
      
      private function externalResumeHandler() : void
      {
         if(!this.mIsPaused)
         {
            return;
         }
         this.mIsPaused = false;
         if(this.mResumeGame)
         {
            dispatchEvent(new EnginePauseEvent(EnginePauseEvent.ENGINE_RESUME));
         }
         SoundEngine.setSounds(AngryBirdsBase.sSoundsEnabled);
         AngryBirdsBase.singleton.externalResume();
         AngryBirdsBase.singleton.forceResize();
      }
      
      public function getScreenshot() : void
      {
         if(AngryBirdsEngine.smLevelMain.isStarlingRunning)
         {
            Starling.current.screenShotCallback = this.onStarlingReadyForScreenshot;
         }
         else
         {
            setTimeout(this.onStarlingReadyForScreenshot,10);
         }
      }
      
      private function onStarlingReadyForScreenshot() : void
      {
         var starlingScreenshot:BitmapData = null;
         dispatchEvent(new Event(Event.INIT));
         var width:int = this.mStage.stageWidth;
         var height:int = this.mStage.stageHeight;
         if(width < 2 || height < 2)
         {
            width = AngryBirdsBase.stageWidth;
            height = AngryBirdsBase.stageHeight;
         }
         width = Math.max(8,Math.min(width,2880));
         height = Math.max(8,Math.min(height,2880));
         var screenshot:BitmapData = new BitmapData(Math.floor(width * 0.25),Math.floor(height * 0.25),false);
         if(AngryBirdsEngine.smLevelMain.isStarlingRunning)
         {
            starlingScreenshot = new BitmapData(width,height,false);
            Starling.drawToBitmapData(starlingScreenshot);
            screenshot.draw(starlingScreenshot,new Matrix(0.25,0,0,0.25));
            starlingScreenshot.dispose();
         }
         try
         {
            screenshot.draw(this.mStage,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         screenshot.applyFilter(screenshot,screenshot.rect,new Point(0,0),mBlurFilter = mBlurFilter || new BlurFilter());
         ExternalInterfaceHandler.performCall("flashScreenshotReadyHandler",Base64.encodeByteArray(new JPGEncoder(70).encode(screenshot)));
         screenshot.dispose();
         Starling.current.screenShotCallback = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
