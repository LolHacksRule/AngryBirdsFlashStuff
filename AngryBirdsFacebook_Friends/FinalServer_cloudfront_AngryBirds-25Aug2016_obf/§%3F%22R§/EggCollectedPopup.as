package §?"R§
{
   import §8§.§#$+§;
   import §<!O§.§@#`§;
   import §^!,§.AbstractPopup;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class EggCollectedPopup extends AbstractPopup
   {
      
      public static const ID:String = "EggCollectedPopup";
      
      private static var §&!D§:String;
       
      
      private var §8!J§:MovieClip;
      
      public function EggCollectedPopup(param1:int, param2:int, param3:String)
      {
         super(param1,param2,§@#`§.§#!c§.Views.PopupView_EggFound[0],ID);
         §&!D§ = param3;
      }
      
      override protected function init() : void
      {
         this.§8!J§ = §7!j§.mClip;
         if(§&!D§.indexOf("300") != -1)
         {
            this.§8!J§.spin.visible = false;
         }
         else
         {
            this.§8!J§.spin.visible = true;
         }
         this.§8!J§.EasterEgg.gotoAndStop(§&!D§);
         §#$+§.playSound("Found_GoldenEgg",§#$+§.§'!o§);
         this.§8!J§.gotoAndPlay(1);
         this.§8!J§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§8!J§.currentFrame == this.§8!J§.totalFrames)
         {
            this.§8!J§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            this.§8!J§.stop();
            close();
         }
      }
   }
}
