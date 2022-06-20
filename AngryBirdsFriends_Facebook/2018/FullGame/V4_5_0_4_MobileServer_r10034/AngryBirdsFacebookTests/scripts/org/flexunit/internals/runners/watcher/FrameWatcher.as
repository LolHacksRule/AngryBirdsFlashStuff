package org.flexunit.internals.runners.watcher
{
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.utils.getTimer;
   import org.fluint.uiImpersonation.IVisualEnvironmentBuilder;
   import org.fluint.uiImpersonation.IVisualTestEnvironment;
   import org.fluint.uiImpersonation.VisualTestEnvironmentBuilder;
   
   public class FrameWatcher
   {
      
      private static var instance:FrameWatcher;
      
      public static const ALLOWABLE_FRAME_USE:Number = 0.85;
       
      
      private var _stage:Stage;
      
      private var lastEnterFrameTime:Number = 0;
      
      private var _approximateMode:Boolean = true;
      
      private var fps:Number = 24;
      
      private var frameLength:Number;
      
      private var maxFrameUsage:Number;
      
      public function FrameWatcher(stage:Stage = null)
      {
         this.frameLength = 1000 / this.fps;
         this.maxFrameUsage = this.frameLength * ALLOWABLE_FRAME_USE;
         super();
         if(!stage)
         {
            this.stage = this.getStage();
         }
         else
         {
            this.stage = stage;
         }
      }
      
      public function get stage() : Stage
      {
         return this._stage;
      }
      
      public function set stage(value:Stage) : void
      {
         if(this._stage)
         {
            this._stage.removeEventListener(Event.ENTER_FRAME,this.handleEnterFrame);
         }
         this._stage = value;
         if(this._stage)
         {
            this.fps = Math.max(this.stage.frameRate,1);
            this.frameLength = 1000 / this.fps;
            this.maxFrameUsage = this.frameLength * ALLOWABLE_FRAME_USE;
            this._approximateMode = false;
            this._stage.addEventListener(Event.ENTER_FRAME,this.handleEnterFrame);
         }
      }
      
      public function get approximateMode() : Boolean
      {
         return this._approximateMode;
      }
      
      public function get timeRemaining() : Boolean
      {
         var time:Number = getTimer() - this.lastEnterFrameTime;
         return time < this.maxFrameUsage;
      }
      
      public function simulateTick() : void
      {
         this.lastEnterFrameTime = getTimer();
      }
      
      private function handleEnterFrame(event:Event) : void
      {
         this.lastEnterFrameTime = getTimer();
      }
      
      protected function getStage() : Stage
      {
         var testEnvironment:IVisualEnvironmentBuilder = VisualTestEnvironmentBuilder.getInstance();
         var environment:IVisualTestEnvironment = testEnvironment.buildVisualTestEnvironment();
         if(environment is DisplayObject)
         {
            return (environment as DisplayObject).stage;
         }
         return null;
      }
   }
}
