package § o§
{
   import §1#W§.§!#&§;
   import §8#D§.§=>§;
   import §<#m§.AbstractPopup;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class EggCollectedPopup extends AbstractPopup
   {
      
      public static const ID:String = "EggCollectedPopup";
      
      private static var §=$'§:String;
       
      
      private var §>"g§:MovieClip;
      
      public function EggCollectedPopup(param1:int, param2:int, param3:String)
      {
         super(param1,param2,§=>§.§%" §.Views.PopupView_EggFound[0],ID);
         §=$'§ = param3;
      }
      
      override protected function init() : void
      {
         this.§>"g§ = §1"6§.mClip;
         if(§=$'§.indexOf("300") != -1)
         {
            this.§>"g§.spin.visible = false;
         }
         else
         {
            this.§>"g§.spin.visible = true;
         }
         this.§>"g§.EasterEgg.gotoAndStop(§=$'§);
         §!#&§.playSound("goldenegg",§!#&§.§6#h§);
         this.§>"g§.gotoAndPlay(1);
         this.§>"g§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§>"g§.currentFrame == this.§>"g§.totalFrames)
         {
            this.§>"g§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            this.§>"g§.stop();
            close();
         }
      }
   }
}
