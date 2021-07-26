package §?Q§
{
   import § $0§.AbstractPopup;
   import §";§.§false§;
   import §3"V§.§ b§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class EggCollectedPopup extends AbstractPopup
   {
      
      public static const ID:String = "EggCollectedPopup";
      
      private static var §#!X§:String;
       
      
      private var §8#M§:MovieClip;
      
      public function EggCollectedPopup(param1:int, param2:int, param3:String)
      {
         super(param1,param2,§false§.§4#;§.Views.PopupView_EggFound[0],ID);
         §#!X§ = param3;
      }
      
      override protected function init() : void
      {
         this.§8#M§ = §;#'§.mClip;
         if(§#!X§.indexOf("300") != -1)
         {
            this.§8#M§.spin.visible = false;
         }
         else
         {
            this.§8#M§.spin.visible = true;
         }
         this.§8#M§.EasterEgg.gotoAndStop(§#!X§);
         § b§.playSound("goldenegg",§ b§.§;$5§);
         this.§8#M§.gotoAndPlay(1);
         this.§8#M§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§8#M§.currentFrame == this.§8#M§.totalFrames)
         {
            this.§8#M§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            this.§8#M§.stop();
            close();
         }
      }
   }
}
