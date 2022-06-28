package §9!Q§
{
   import §1!T§.§6!H§;
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §9#§.Popup;
   import flash.events.Event;
   
   public class §`!!§ extends Popup
   {
       
      
      public function §`!!§(param1:§ C§, param2:StatePopupManager, param3:String)
      {
         super(dynamic.§[6§.Views.PopupView_EggFound[0],param1);
         mClip.EasterEgg.gotoAndStop(param3);
         §6!H§.playSound("Found_GoldenEgg");
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
