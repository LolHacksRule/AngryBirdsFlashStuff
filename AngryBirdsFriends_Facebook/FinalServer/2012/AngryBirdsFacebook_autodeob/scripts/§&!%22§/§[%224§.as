package §&!"§
{
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §>s§.§+m§;
   import flash.events.Event;
   
   public class §["4§ extends Popup
   {
       
      
      public function §["4§(param1:§^0§, param2:StatePopupManager, param3:String)
      {
         super(§%^§.§?>§.Views.PopupView_EggFound[0],param1);
         §]!i§ = §4!L§;
         if(param3.indexOf("300") != -1)
         {
            mClip.spin.visible = false;
         }
         else
         {
            mClip.spin.visible = true;
         }
         mClip.EasterEgg.gotoAndStop(param3);
         §+m§.§]!N§("Found_GoldenEgg");
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
