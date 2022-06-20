package §'!s§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §6!B§.§>!E§;
   import flash.events.Event;
   
   public class §;!q§ extends Popup
   {
       
      
      public function §;!q§(param1:§7!A§, param2:StatePopupManager, param3:String)
      {
         super(§ "A§.§4[§.Views.PopupView_EggFound[0],param1);
         §]"5§ = §%!x§;
         if(param3.indexOf("300") != -1)
         {
            mClip.spin.visible = false;
         }
         else
         {
            mClip.spin.visible = true;
         }
         mClip.EasterEgg.gotoAndStop(param3);
         §>!E§.§7N§("Found_GoldenEgg");
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
