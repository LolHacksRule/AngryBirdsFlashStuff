package §9v§
{
   import §3!j§.SoundEngine;
   import §>!"§.Popup;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import flash.events.Event;
   
   public class EggCollectedPopup extends Popup
   {
       
      
      public function EggCollectedPopup(currentUIView:§-!H§, statePopup:StatePopupManager, eggId:String)
      {
         super(§3!5§.§4@§.Views.PopupView_EggFound[0],currentUIView);
         mClip.EasterEgg.gotoAndStop(eggId);
         SoundEngine.§`B§("Found_GoldenEgg");
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
