package §7N§
{
   import §1k§.§%4§;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import flash.events.Event;
   
   public class §87§ extends Popup
   {
       
      
      public function §87§(param1:§"!j§, param2:StatePopupManager, param3:String)
      {
         super(§1"-§.§ !>§.Views.PopupView_EggFound[0],param1);
         §3!l§ = §'"8§;
         if(param3.indexOf("300") != -1)
         {
            mClip.spin.visible = false;
         }
         else
         {
            mClip.spin.visible = true;
         }
         mClip.EasterEgg.gotoAndStop(param3);
         §%4§.§>f§("Found_GoldenEgg");
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
