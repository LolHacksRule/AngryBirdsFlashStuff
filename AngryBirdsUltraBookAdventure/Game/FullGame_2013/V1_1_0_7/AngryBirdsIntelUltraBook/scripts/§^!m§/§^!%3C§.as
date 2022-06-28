package §^!m§
{
   import §!!j§.Popup;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §[!b§.§-!Q§;
   import flash.events.Event;
   
   public class §^!<§ extends Popup
   {
       
      
      public function §^!<§(param1:§&!G§, param2:StatePopupManager, param3:String)
      {
         super(§2!z§.§ _§.Views.PopupView_EggFound[0],param1);
         mClip.EasterEgg.gotoAndStop(param3);
         §-!Q§.§#3§("Found_GoldenEgg");
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
