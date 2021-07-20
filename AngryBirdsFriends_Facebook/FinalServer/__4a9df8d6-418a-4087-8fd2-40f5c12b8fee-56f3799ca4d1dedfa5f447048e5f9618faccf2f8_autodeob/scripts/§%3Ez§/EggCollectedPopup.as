package §>z§
{
   import §%!-§.§?l§;
   import §0!s§.AbstractPopup;
   import §8#K§.§3Z§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class EggCollectedPopup extends AbstractPopup
   {
      
      public static const ID:String = "EggCollectedPopup";
      
      private static var §>!§:String;
       
      
      private var §&r§:MovieClip;
      
      public function EggCollectedPopup(param1:int, param2:int, param3:String)
      {
         super(param1,param2,§?l§.§3m§.Views.PopupView_EggFound[0],ID);
         §>!§ = param3;
      }
      
      override protected function init() : void
      {
         this.§&r§ = §&!M§.mClip;
         if(§>!§.indexOf("300") != -1)
         {
            this.§&r§.spin.visible = false;
         }
         else
         {
            this.§&r§.spin.visible = true;
         }
         this.§&r§.EasterEgg.gotoAndStop(§>!§);
         §3Z§.playSound("goldenegg",§3Z§.§[!F§);
         this.§&r§.gotoAndPlay(1);
         this.§&r§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§&r§.currentFrame == this.§&r§.totalFrames)
         {
            this.§&r§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            this.§&r§.stop();
            close();
         }
      }
   }
}
