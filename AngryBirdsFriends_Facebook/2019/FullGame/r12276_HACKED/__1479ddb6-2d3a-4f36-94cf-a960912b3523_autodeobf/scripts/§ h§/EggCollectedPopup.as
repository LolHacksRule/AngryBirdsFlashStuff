package § h§
{
   import § "v§.§4$4§;
   import §9!6§.AbstractPopup;
   import §[#A§.§&n§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class EggCollectedPopup extends AbstractPopup
   {
      
      public static const ID:String = "EggCollectedPopup";
      
      private static var §,!A§:String;
       
      
      private var §3`§:MovieClip;
      
      public function EggCollectedPopup(param1:int, param2:int, param3:String)
      {
         super(param1,param2,§&n§.§7a§.Views.PopupView_EggFound[0],ID);
         §,!A§ = param3;
      }
      
      override protected function init() : void
      {
         this.§3`§ = §'o§.mClip;
         if(§,!A§.indexOf("300") != -1)
         {
            this.§3`§.spin.visible = false;
         }
         else
         {
            this.§3`§.spin.visible = true;
         }
         this.§3`§.EasterEgg.gotoAndStop(§,!A§);
         §4$4§.playSound("goldenegg",§4$4§.§1#l§);
         this.§3`§.gotoAndPlay(1);
         this.§3`§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§3`§.currentFrame == this.§3`§.totalFrames)
         {
            this.§3`§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            this.§3`§.stop();
            close();
         }
      }
   }
}
