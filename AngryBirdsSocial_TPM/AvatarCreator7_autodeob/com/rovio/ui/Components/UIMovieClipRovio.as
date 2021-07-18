package com.rovio.ui.Components
{
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   
   public class UIMovieClipRovio extends UIComponentRovio
   {
       
      
      public function UIMovieClipRovio(param1:XML, param2:UIContainerRovio)
      {
         mParentContainer = param2;
         super(param1);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function StopAt(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function PlayAt(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function getCurrentFrame() : int
      {
         return mClip.currentFrame;
      }
   }
}
