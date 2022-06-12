package §5!Y§
{
   import §8m§.§@"M§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.Event;
   
   public class §2E§ extends Popup
   {
       
      
      public function §2E§(param1:§`_§, param2:StatePopupManager, param3:String)
      {
         super(§ "<§.§%I§.Views.PopupView_EggFound[0],param1);
         §""W§ = §[M§;
         if(param3.indexOf("300") != -1)
         {
            mClip.spin.visible = false;
         }
         else
         {
            mClip.spin.visible = true;
         }
         mClip.EasterEgg.gotoAndStop(param3);
         §@"M§.§3"C§("Found_GoldenEgg");
         mClip.gotoAndPlay(1);
         mClip.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(mClip.currentFrame == mClip.totalFrames)
         {
            mClip.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            mClip.stop();
            preClose(false);
         }
      }
   }
}
