package com.rovio.ui.Components
{
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import flash.display.MovieClip;
   
   public class UIMovieClipRovio extends UIComponentInteractiveRovio
   {
       
      
      public function UIMovieClipRovio(data:XML, parentContainer:UIContainerRovio, clip:MovieClip = null)
      {
         super(data,parentContainer,clip);
      }
      
      override public function listenerEventOccured(eventIndex:int, eventName:String) : void
      {
         super.listenerEventOccured(eventIndex,eventName);
      }
      
      public function StopAt(frame:int) : void
      {
         mClip.gotoAndStop(frame);
      }
      
      public function PlayAt(frame:int) : void
      {
         mClip.gotoAndPlay(frame);
      }
      
      public function getCurrentFrame() : int
      {
         return mClip.currentFrame;
      }
   }
}
