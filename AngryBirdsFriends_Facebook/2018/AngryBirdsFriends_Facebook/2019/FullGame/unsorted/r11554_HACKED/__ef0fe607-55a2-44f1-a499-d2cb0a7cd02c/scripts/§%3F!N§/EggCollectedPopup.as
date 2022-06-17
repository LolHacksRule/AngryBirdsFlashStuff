package §?!N§
{
   import §%#v§.§0"j§;
   import §;$5§.AbstractPopup;
   import §>"9§.§[#%§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class EggCollectedPopup extends AbstractPopup
   {
      
      public static const ID:String = "EggCollectedPopup";
      
      private static var §#!1§:String;
       
      
      private var §%§:MovieClip;
      
      public function EggCollectedPopup(param1:int, param2:int, param3:String)
      {
         super(param1,param2,§0"j§.§-i§.Views.PopupView_EggFound[0],ID);
         §#!1§ = param3;
      }
      
      override protected function init() : void
      {
         this.§%§ = §8#Y§.mClip;
         if(§#!1§.indexOf("300") != -1)
         {
            this.§%§.spin.visible = false;
         }
         else
         {
            this.§%§.spin.visible = true;
         }
         this.§%§.EasterEgg.gotoAndStop(§#!1§);
         §[#%§.playSound("goldenegg",§[#%§.§-"I§);
         this.§%§.gotoAndPlay(1);
         this.§%§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§%§.currentFrame == this.§%§.totalFrames)
         {
            this.§%§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            this.§%§.stop();
            close();
         }
      }
   }
}
