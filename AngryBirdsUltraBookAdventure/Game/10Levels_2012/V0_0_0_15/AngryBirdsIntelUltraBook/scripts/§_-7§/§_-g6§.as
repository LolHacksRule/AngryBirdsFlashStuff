package §_-7§
{
   import §_-4g§.§_-pX§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-gU§.Popup;
   import flash.events.Event;
   
   public class §_-g6§ extends Popup
   {
       
      
      public function §_-g6§(param1:§_-5q§, param2:StatePopupManager, param3:String)
      {
         super(§_-vB§.§_-ky§.Views.PopupView_EggFound[0],param1);
         mClip.EasterEgg.gotoAndStop(param3);
         §_-pX§.playSound("Found_GoldenEgg");
         mClip.gotoAndPlay(1);
         mClip.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(mClip.currentFrame == mClip.totalFrames)
         {
            mClip.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            mClip.stop();
            preClose();
         }
      }
   }
}
