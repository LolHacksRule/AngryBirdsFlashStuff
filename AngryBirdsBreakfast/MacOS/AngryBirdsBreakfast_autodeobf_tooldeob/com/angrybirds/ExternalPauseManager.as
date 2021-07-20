package com.angrybirds
{
   import com.rovio.events.EnginePauseEvent;
   import com.rovio.sound.SoundEngine;
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import com.rovio.adobe.images.JPGEncoder;
   import starling.core.Starling;
   import each.Base64;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class ExternalPauseManager extends EventDispatcher
   {
       
      
      private var mResumeGame:Boolean;
      
      private var mStage:Stage;
      
      private var mIsPaused:Boolean = false;
      
      public function ExternalPauseManager(param1:Stage)
      {
         super();
         this.mStage = param1;
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
         Starling.current.screenShotCallback = this.onStarlingReadyForScreenshot;
      }
      
      private function onStarlingReadyForScreenshot() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.mStage.stageWidth;
         var _loc3_:int = this.mStage.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsBase.stageWidth;
            _loc3_ = AngryBirdsBase.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         Starling.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.mStage,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         ExternalInterfaceHandler.performCall("flashScreenshotReadyHandler",Base64.encodeByteArray(new JPGEncoder(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         Starling.current.screenShotCallback = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
