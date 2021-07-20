package com.angrybirds.ui
{
   import com.angrybirds.PreLoaderLoadingIndicator;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.getDefinitionByName;
   
   public class PreLoader extends MovieClip
   {
       
      
      protected var mLoadingIndicator:PreLoaderLoadingIndicator;
      
      public function PreLoader()
      {
         super();
         this.mLoadingIndicator = new PreLoaderLoadingIndicator();
         addChild(this.mLoadingIndicator);
         this.align();
         addEventListener(Event.ENTER_FRAME,this.onFrame);
         stage.addEventListener(Event.RESIZE,this.onResize);
      }
      
      private function onFrame(param1:Event) : void
      {
         if(currentFrame == totalFrames)
         {
            stop();
            removeEventListener(Event.ENTER_FRAME,this.onFrame);
            stage.removeEventListener(Event.RESIZE,this.onResize);
            removeChild(this.mLoadingIndicator);
            this.initGame();
         }
      }
      
      private function onResize(param1:Event) : void
      {
         this.align();
      }
      
      protected function align() : void
      {
         this.mLoadingIndicator.x = Math.round(stage.stageWidth / 2);
         this.mLoadingIndicator.y = Math.round(stage.stageHeight / 2);
      }
      
      protected function initGame() : void
      {
         var _loc1_:Class = getDefinitionByName(this.mainClassName) as Class;
         addChild(DisplayObject(new _loc1_()));
      }
      
      protected function get mainClassName() : String
      {
         return "AngryBirdsCustomCanvas";
      }
   }
}
