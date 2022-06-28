package §?N§
{
   import §,B§.Popup;
   import §5!c§.§9'§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import flash.events.Event;
   
   public class §##§ extends Popup
   {
       
      
      public function §##§(param1:§4`§, param2:StatePopupManager, param3:String)
      {
         super(§ !I§.§3!a§.Views.PopupView_EggFound[0],param1);
         mClip.EasterEgg.gotoAndStop(param3);
         §9'§.playSound("Found_GoldenEgg");
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
