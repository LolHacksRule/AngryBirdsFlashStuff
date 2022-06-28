package §9!y§
{
   import §"R§.§ !Q§;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §[m§.Popup;
   import flash.events.Event;
   
   public class §]!+§ extends Popup
   {
       
      
      public function §]!+§(param1:§'!^§, param2:StatePopupManager, param3:String)
      {
         super(§[!'§.§+@§.Views.PopupView_EggFound[0],param1);
         mClip.EasterEgg.gotoAndStop(param3);
         § !Q§.playSound("Found_GoldenEgg");
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
