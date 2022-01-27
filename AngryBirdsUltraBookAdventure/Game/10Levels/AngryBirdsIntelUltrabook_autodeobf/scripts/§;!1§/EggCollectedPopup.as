package §;!1§
{
   import §!!0§.SoundEngine;
   import §"$§.Popup;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   import flash.events.Event;
   
   public class EggCollectedPopup extends Popup
   {
       
      
      public function EggCollectedPopup(currentUIView:§`X§, statePopup:StatePopupManager, eggId:String)
      {
         super(§+q§.§%M§.Views.PopupView_EggFound[0],currentUIView);
         mClip.EasterEgg.gotoAndStop(eggId);
         SoundEngine.§-!h§("Found_GoldenEgg");
         mClip.gotoAndPlay(1);
         mClip.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function onEnterFrame(e:Event) : void
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
